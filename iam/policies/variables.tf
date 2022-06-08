variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

variable "region" {
  type        = string
  description = "Region for use in object storage policy"
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
variable "workload_compartment_id" {
  type        = string
  description = "The list of workload compartments"
}

variable "workload_compartment_name" {
  type        = string
  description = "List of application workload compartment names"
}

variable "network_compartment_id" {
  type        = string
  description = "The OCID of the network compartment"
}

variable "network_compartment_name" {
  type        = string
  description = "The name for the network compartment"
}

# -----------------------------------------------------------------------------
# IAM Group Variables
# -----------------------------------------------------------------------------
variable "workload_storage_admins_group_name" {
  type        = string
  description = "Map of workload compartment names and group names for Workload Storage Administrators"
}

variable "workload_storage_users_group_name" {
  type        = string
  description = "Map of workload compartment names and group names for Workload Storage Users"
}

variable "workload_admins_group_name" {
  type        = string
  description = "Map of workload compartment names and group names for Workload Administrators"
}

variable "workload_users_group_name" {
  type        = string
  description = "Map of workload compartment names and group names for Workload Users"
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
