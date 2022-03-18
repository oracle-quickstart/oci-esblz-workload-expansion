# -----------------------------------------------------------------------------
# Provider specific variables
# -----------------------------------------------------------------------------
variable "region" {
  type        = string
  description = "the OCI region"
}

variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

variable "current_user_ocid" {
  type        = string
  description = "OCID of the current user"
}

variable "api_fingerprint" {
  type        = string
  description = "The fingerprint of API"
  default     = ""
}

variable "api_private_key_path" {
  type        = string
  description = "The local path to the API private key"
  default     = ""
}

# -----------------------------------------------------------------------------
# Required inputs
# -----------------------------------------------------------------------------
variable "tag_cost_center" {
  type        = string
  description = "CostCenter tag value"
  validation {
    condition     = can(regex("^[!-~]{1,100}$", var.tag_cost_center))
    error_message = "Must be a valid CostCenter tag value. Allows printable ASCII, excluding periods (.) and spaces and max 100 characters."
  }
}

variable "tag_geo_location" {
  type        = string
  description = "GeoLocation tag value"
  validation {
    condition     = can(regex("^[!-~]{1,100}$", var.tag_geo_location))
    error_message = "Must be a valid Geolocation tag value. Allows printable ASCII, excluding periods (.) and spaces and max 100 characters."
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# Sandbox Mode
# ---------------------------------------------------------------------------------------------------------------------
variable "is_sandbox_mode_enabled" {
  type        = bool
  description = "Do you want to run the stack in Sandbox mode?"
}

variable "workload_name" {
  type        = string
  description = "Name of workload used in resource naming"
}

variable "applications_compartment_id" {
  type        = string
  description = "Parent compartment to attach workload compartment to"
}

variable "vcn_ocid" {
  type        = string
  description = "VCN to attach workload subnet to"
}
