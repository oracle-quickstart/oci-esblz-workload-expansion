# -----------------------------------------------------------------------------
# Create Tags 
# -----------------------------------------------------------------------------
module "tagging" {
  source                = "./monitoring/tags/architecture-center"
  tenancy_ocid          = var.tenancy_ocid
  parent_compartment_id = module.workload-compartment.workload_compartment_id
  providers             = { oci = oci.home_region }
}
