
# -----------------------------------------------------------------------------
# Create compartment(s) for application specific workloads
# -----------------------------------------------------------------------------
module "workload-compartment" {
  source                        = "./compartments/workload-compartment"
  compartment_name              = var.compartment_name
  applications_compartment_ocid = var.applications_compartment_id
  compartment_delete_enabled    = var.is_sandbox_mode_enabled

  tag_geo_location = var.tag_geo_location
  tag_cost_center  = var.tag_cost_center

  providers = {
    oci = oci.home_region
  }
}
