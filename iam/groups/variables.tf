variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

# ---------------------------------------------------------------------------------------------------------------------
# Optional suffix string to prevent naming collision with tenancy level resources
# ---------------------------------------------------------------------------------------------------------------------
variable "suffix" {
  type        = string
  description = "Optional suffix string used in a resource name"
}

# -----------------------------------------------------------------------------
# Identity Compartment Variables
# -----------------------------------------------------------------------------
variable "workload_compartment_name" {
  type        = string
  description = "List of application workload compartment names"
}

# -----------------------------------------------------------------------------
# IAM Group Name Variables
# -----------------------------------------------------------------------------
variable "workload_storage_admins_group_name" {
  type        = string
  description = "The name for the workload storage administrators group"
}

variable "workload_storage_users_group_name" {
  type        = string
  description = "The name for the workload storage users group"
}

variable "workload_admins_group_name" {
  type        = string
  description = "The name for the workload administrators group"
}

variable "workload_users_group_name" {
  type        = string
  description = "The name for the workload users group"
}

variable "database_admins_group_name" {
  type        = string
  description = "The name for the database administrators group"
}

# -----------------------------------------------------------------------------
# Tag Variables
# -----------------------------------------------------------------------------
variable "tag_cost_center" {
  type        = string
  description = "Cost center to charge for OCI resources"
}

variable "tag_geo_location" {
  type        = string
  description = "Geo location for OCI resources"
}
