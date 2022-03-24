variable "workload_compartment_name" {
    type = string
    description = "Name of workload compartment"
}

variable "applications_compartment_id" {
  type        = string
  description = "Parent compartment to attach workload compartment to"
}

variable "network_compartment_id" {
  type = string
  description = "Network compartment to attach vcn to"
}
