variable "vcn_id" {
  type        = string
  description = "VCN to attach workload subnet to"
}

variable "nat_gateway_id" {
  type        = string
  description = "Nat Gateway to attach private and database subnet to"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "List of Private Subnet CIDR Block (one per workload, maximum of five)"
}

variable "private_subnet_dns_label" {
  type        = string
  description = "List of Private Subnet DNS Label (one per workload, maximum of five)"
}

variable "database_subnet_cidr_block" {
  type        = string
  description = "List of Database Subnet CIDR Block (one per workload, maximum of five)"
}

variable "database_subnet_dns_label" {
  type        = string
  description = "List of Database Subnet DNS Label (one per workload, maximum of five)"
}
