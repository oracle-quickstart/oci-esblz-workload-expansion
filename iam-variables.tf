# ---------------------------------------------------------------------------------------------------------------------
# IAM Group Names
# ---------------------------------------------------------------------------------------------------------------------
variable "workload_storage_admins_group_name" {
  type        = string
  description = "The name for the workload storage administrators group"
  default     = "Workload-Storage-Admins"
  validation {
    condition     = can(regex("^([\\w\\.-]){1,100}$", var.workload_storage_admins_group_name))
    error_message = "Allowed maximum 100 characters, including letters, numbers, periods, hyphens, underscores, and is unique across all groups."
  }
}

variable "workload_storage_users_group_name" {
  type        = string
  description = "The name for the workload storage users group"
  default     = "Workload-Storage-Users"
  validation {
    condition     = can(regex("^([\\w\\.-]){1,100}$", var.workload_storage_users_group_name))
    error_message = "Allowed maximum 100 characters, including letters, numbers, periods, hyphens, underscores, and is unique across all groups."
  }
}

variable "workload_admins_group_name" {
  type        = string
  description = "The name for the workload administrators group"
  default     = "Workload-Admins"
  validation {
    condition     = can(regex("^([\\w\\.-]){1,100}$", var.workload_admins_group_name))
    error_message = "Allowed maximum 100 characters, including letters, numbers, periods, hyphens, underscores, and is unique across all groups."
  }
}

variable "workload_users_group_name" {
  type        = string
  description = "The name for the workload users group"
  default     = "Workload-Users"
  validation {
    condition     = can(regex("^([\\w\\.-]){1,100}$", var.workload_users_group_name))
    error_message = "Allowed maximum 100 characters, including letters, numbers, periods, hyphens, underscores, and is unique across all groups."
  }
}
