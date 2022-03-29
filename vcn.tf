module "vcn-core" {
  source                     = "./vcn/core"
  compartment_ocid           = var.network_compartment_id
  region_key                 = local.region_key[0]
  workload_compartment_name  = var.workload_compartment_name

  private_subnet_cidr_block  = var.private_subnet_cidr_block
  private_subnet_dns_label   = var.private_subnet_dns_label
  database_subnet_dns_label  = var.database_subnet_dns_label
  database_subnet_cidr_block = var.database_subnet_cidr_block

  tag_geo_location           = var.tag_geo_location
  tag_cost_center            = var.tag_cost_center

  vcn_id                     = var.vcn_id
  nat_gateway_id             = var.nat_gateway_id
}
