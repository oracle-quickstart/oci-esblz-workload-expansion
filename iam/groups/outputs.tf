# ---------------------------------------------------------------------------------------------------------------------
# Output for Workload Storage Administrators (Group Names)
# ---------------------------------------------------------------------------------------------------------------------
output "workload_storage_admins_group_name" {
  value = oci_identity_group.workload_storage_admins_group.name
}

# ---------------------------------------------------------------------------------------------------------------------
# Output for Workload Storage Users (Group Names)
# ---------------------------------------------------------------------------------------------------------------------
output "workload_storage_users_group_name" {
  value = oci_identity_group.workload_storage_users_group.name
}

# ---------------------------------------------------------------------------------------------------------------------
# Output for Workload Administrators (Group Names)
# ---------------------------------------------------------------------------------------------------------------------
output "workload_admins_group_name" {
  value = oci_identity_group.workload_admins_group.name
}

# ---------------------------------------------------------------------------------------------------------------------
# Output for Workload Users (Group Names)
# ---------------------------------------------------------------------------------------------------------------------
output "workload_users_group_name" {
  value = oci_identity_group.workload_users_group.name
}

# ---------------------------------------------------------------------------------------------------------------------
# Output for Database Admins (Group Names)
# ---------------------------------------------------------------------------------------------------------------------
output "database_admins_group_name" {
  value = oci_identity_group.database_admins_group.name
}