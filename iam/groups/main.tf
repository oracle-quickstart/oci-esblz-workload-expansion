terraform {
  required_providers {
    oci = {
      source                = "oracle/oci"
      configuration_aliases = [oci]
    }
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# IAM Group for Workload Storage Administrators
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_group" "workload_storage_admins_group" {
  compartment_id = var.tenancy_ocid
  description    = "OCI Landing Zone Workload Specific Storage Administrators Group"
  name           = "${var.workload_storage_admins_group_name}-${var.workload_compartment_name}${var.suffix}"

  freeform_tags = {
    "Description" = "Group for Workload Storage Administrators",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# IAM Group for Workload Storage Users
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_group" "workload_storage_users_group" {
  compartment_id = var.tenancy_ocid
  description    = "OCI Landing Zone Workload Storage Users Group"
  name           = "${var.workload_storage_users_group_name}-${var.workload_compartment_name}${var.suffix}"

  freeform_tags = {
    "Description" = "Group for Workload Storage Users",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# IAM Group for Workload Admins
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_group" "workload_admins_group" {
  compartment_id = var.tenancy_ocid
  description    = "OCI Landing Zone Workload Users Group"
  name           = "${var.workload_admins_group_name}-${var.workload_compartment_name}${var.suffix}"

  freeform_tags = {
    "Description" = "Group for Workload Administrators",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# IAM Group for Workload Users
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_group" "workload_users_group" {
  compartment_id = var.tenancy_ocid
  description    = "OCI Landing Zone Workload Users Group"
  name           = "${var.workload_users_group_name}-${var.workload_compartment_name}${var.suffix}"

  freeform_tags = {
    "Description" = "Group for Workload Users",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }
}
