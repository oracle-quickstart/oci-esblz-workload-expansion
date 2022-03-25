variable "workload_compartment_name" {
    type = string
    description = "Name of workload compartment"
}

variable "applications_compartment_id" {
  type        = string
  description = "Parent compartment to attach workload compartment to"
}

variable "network_compartment_name" {
  type        = string
  description = "Name of the top level network compartment"
  default     = "network"
  validation {
    condition     = can(regex("^([\\w\\.-]){1,100}$", var.network_compartment_name))
    error_message = "Allowed maximum 100 characters, including letters, numbers, periods, hyphens, underscores, and is unique within its parent compartment."
  }
}

variable "network_compartment_id" {
  type = string
  description = "Network compartment to attach vcn to"
}
