# -----------------------------------------------------------------------------
# Create private subnet for each workload
# -----------------------------------------------------------------------------
resource "oci_core_subnet" "private_subnet" {
  cidr_block                 = var.private_subnet_cidr_block
  display_name               = "OCI-LZ-Private-${var.workload_compartment_name}-${var.region_key}-Subnet"
  dns_label                  = var.private_subnet_dns_label
  compartment_id             = var.compartment_ocid
  vcn_id                     = var.vcn_id
  route_table_id             = oci_core_route_table.workload_nat_route_table.id
  prohibit_public_ip_on_vnic = true
  freeform_tags = {
    "Description" = "Private Subnet"
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }
}

# -----------------------------------------------------------------------------
# Create route table for routing private workload subnets to NAT Gateway
# -----------------------------------------------------------------------------
resource "oci_core_route_table" "workload_nat_route_table" {
  compartment_id = var.compartment_ocid
  display_name   = "OCI-LZ-VCN-${var.workload_compartment_name}-${var.region_key}-RouteTable"
  vcn_id         = var.vcn_id
  freeform_tags = {
    "Description" = "Primary VCN - NAT route table for var.workload_compartment_name"
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }

  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = var.nat_gateway_id
  }
}

# -----------------------------------------------------------------------------
# Create private database subnet for each workload
# -----------------------------------------------------------------------------
resource "oci_core_subnet" "database_subnet" {
  cidr_block                 = var.database_subnet_cidr_block
  display_name               = "OCI-LZ-Private-${var.workload_compartment_name}-${var.region_key}-Database-Subnet"
  dns_label                  = var.database_subnet_dns_label
  compartment_id             = var.compartment_ocid
  vcn_id                     = var.vcn_id
  route_table_id             = oci_core_route_table.database_nat_route_table.id
  prohibit_public_ip_on_vnic = true
  freeform_tags = {
    "Description" = "Database Subnet"
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }
}

# -----------------------------------------------------------------------------
# Create route table for routing private database subnets to NAT Gateway
# -----------------------------------------------------------------------------
resource "oci_core_route_table" "database_nat_route_table" {
  compartment_id = var.compartment_ocid
  display_name   = "OCI-LZ-VCN-${var.workload_compartment_name}-Database-${var.region_key}-RouteTable"
  vcn_id         = var.vcn_id
  freeform_tags = {
    "Description" = "Primary VCN - Database NAT route table for ${var.workload_compartment_name}"
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }

  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = var.nat_gateway_id
  }
}
