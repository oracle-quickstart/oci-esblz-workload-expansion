# -----------------------------------------------------------------------------
# OCID Output
# -----------------------------------------------------------------------------
output "private_subnet" {
  value = oci_core_subnet.private_subnet
}

output "database_subnet" {
  value = oci_core_subnet.database_subnet
}

output "workload_nat_route_table_id" {
  value = oci_core_route_table.workload_nat_route_table.id
}

output "database_nat_route_table_id" {
  value = oci_core_route_table.database_nat_route_table.id
}
