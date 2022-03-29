# ---------------------------------------------------------------------------------------------------------------------
# Create IAM groups
# ---------------------------------------------------------------------------------------------------------------------
module "groups" {
  source       = "./iam/groups"
  tenancy_ocid = var.tenancy_ocid

  workload_compartment_name          = var.workload_compartment_name
  workload_admins_group_name         = var.workload_admins_group_name
  workload_users_group_name          = var.workload_users_group_name
  workload_storage_admins_group_name = var.workload_storage_admins_group_name
  workload_storage_users_group_name  = var.workload_storage_users_group_name

  tag_cost_center  = var.tag_cost_center
  tag_geo_location = var.tag_geo_location
  suffix           = var.is_sandbox_mode_enabled == true ? "-${random_id.suffix.hex}" : ""

  providers = {
    oci.home_region = oci.home_region
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# Create IAM policies
# ---------------------------------------------------------------------------------------------------------------------
module "policies" {
  source                             = "./iam/policies"
  tenancy_ocid                       = var.tenancy_ocid
  region                             = var.region

  workload_compartment_name          = var.workload_compartment_name
  workload_compartment_id            = module.workload-compartment.workload_compartment_id
  network_compartment_id             = var.network_compartment_id
  network_compartment_name           = var.network_compartment_name

  workload_storage_admins_group_name = module.groups.workload_storage_admins_group_name
  workload_storage_users_group_name  = module.groups.workload_storage_users_group_name
  workload_admins_group_name         = module.groups.workload_admins_group_name
  workload_users_group_name          = module.groups.workload_users_group_name

  tag_cost_center                    = var.tag_cost_center
  tag_geo_location                   = var.tag_geo_location
  suffix                             = var.is_sandbox_mode_enabled == true ? "-${random_id.suffix.hex}" : ""

  providers = {
    oci.home_region = oci.home_region
  }
}
