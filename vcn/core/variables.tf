# -----------------------------------------------------------------------------
# Required inputs
# -----------------------------------------------------------------------------
variable "compartment_ocid" {
  type        = string
  description = "Network compartment ocid"
}

variable "region_key" {
  type        = string
  description = "Region Key"
}

variable "workload_compartment_name" {
  type        = string
  description = "application workload compartment name"
}

variable "tag_cost_center" {
  type        = string
  description = "Cost center to charge for OCI resources"
}

variable "tag_geo_location" {
  type        = string
  description = "Geo location for OCI resources"
}

variable "vcn_id" {
  type        = string
  description = "VCN to attach workload subnet to"
}

variable "nat_gateway_id" {
  type = string
  description = "Nat Gateway to attach private and database subnet to"
}

# -----------------------------------------------------------------------------
# Private Subnet Inputs
# -----------------------------------------------------------------------------
variable "private_subnet_cidr_block" {
  type        = string
  description = "List of Private Subnet CIDR Block"
}

variable "private_subnet_dns_label" {
  type        = string
  description = "List of Private Subnet DNS Label"
}

# -----------------------------------------------------------------------------
# Database Subnet Inputs
# -----------------------------------------------------------------------------
variable "database_subnet_cidr_block" {
  type        = string
  description = "List of Database Subnet CIDR Block"
}

variable "database_subnet_dns_label" {
  type        = string
  description = "List of Database Subnet DNS Label"
}

