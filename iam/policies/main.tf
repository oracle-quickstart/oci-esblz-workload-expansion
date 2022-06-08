terraform {
  required_providers {
    oci = {
      source                = "oracle/oci"
      configuration_aliases = [oci]
    }
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# IAM Policies Workload-Storage-Admins
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_policy" "workload_storage_admins_policies" {
  compartment_id = var.workload_compartment_id
  description    = "OCI Landing Zone Workload Specific Storage Administrator Policies"
  name           = "OCI-LZ-${var.workload_compartment_name}-Storage-Admin-Policy"

  freeform_tags = {
    "Description" = "Policy for Workload Specific Storage Administrator",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }

  statements = [
    # Ability to do all things with block storage volumes, volume backups, and volume groups
    "Allow group ${var.workload_storage_admins_group_name} to manage volume-family in compartment ${var.workload_compartment_name}",
    # Ability to create, manage, or delete a file system or file system clone
    "Allow group ${var.workload_storage_admins_group_name} to manage file-family in compartment ${var.workload_compartment_name}",
    # Ability to do all things with object storage buckets
    "Allow group ${var.workload_storage_admins_group_name} to manage buckets in compartment ${var.workload_compartment_name}",
    # Ability to do all things with object storage objects
    "Allow group ${var.workload_storage_admins_group_name} to manage objects in compartment ${var.workload_compartment_name}"
  ]
}

# ---------------------------------------------------------------------------------------------------------------------
# IAM Policies Workload Storage Users
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_policy" "workload_storage_users_policies" {
  compartment_id = var.workload_compartment_id
  description    = "OCI Landing Zone Storage Workload User Policy"
  name           = "OCI-LZ-${var.workload_compartment_name}-Workload-Storage-User-Policy"

  freeform_tags = {
    "Description" = "Policy for Workload Specific Storage Users",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }

  statements = [
    # Ability to get all buckets in the compartment
    "Allow group ${var.workload_storage_users_group_name} to read buckets in compartment ${var.workload_compartment_name}",
    # Ability to create, inspect and download objects in the compartment
    "Allow group ${var.workload_storage_users_group_name} to manage objects in compartment ${var.workload_compartment_name} where any {request.permission='OBJECT_CREATE', request.permission='OBJECT_INSPECT', request.permission='OBJECT_READ'}"
  ]
}

# ---------------------------------------------------------------------------------------------------------------------
# IAM Policies Workload Admins
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_policy" "workload_admins_policies" {
  compartment_id = var.workload_compartment_id
  description    = "OCI Landing Zone Workload User Policy"
  name           = "OCI-LZ-${var.workload_compartment_name}-Workload-Admin-Policy"

  freeform_tags = {
    "Description" = "Policy for Workload Specific Administrators",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location

  }

  statements = [
    # Ability to do everything with custom images and compute instances
    "Allow group ${var.workload_admins_group_name} to manage instance-images in compartment ${var.workload_compartment_name}",
    "Allow group ${var.workload_admins_group_name} to manage instances in compartment ${var.workload_compartment_name}",
    "Allow group ${var.workload_admins_group_name} to manage object-family in compartment ${var.workload_compartment_name}",
    "Allow group ${var.workload_admins_group_name} to use volume-family in compartment ${var.workload_compartment_name}",
    # Ability to do all things with instance configurations, instance pools, and cluster networks
    "Allow group ${var.workload_admins_group_name} to manage compute-management-family in compartment ${var.workload_compartment_name}",
    "Allow group ${var.workload_admins_group_name} to read instance-family in compartment ${var.workload_compartment_name}",
    "Allow group ${var.workload_admins_group_name} to inspect volumes in compartment ${var.workload_compartment_name}",
    # If resources used by the instance pool contain default tags, add the following  to give the group permission to the tag namespace Oracle-Tags
    "Allow group ${var.workload_admins_group_name} to use tag-namespaces in compartment ${var.workload_compartment_name} where target.tag-namespace.name = 'oracle-tags'",
    "Allow service compute_management to use compute-capacity-reservations in compartment ${var.workload_compartment_name}",
    # Ability to create, update, and delete autoscaling configurations
    "Allow group ${var.workload_admins_group_name} to manage auto-scaling-configuration in compartment ${var.workload_compartment_name}",
    # Ability to manage Instance Console Creation
    "Allow group ${var.workload_admins_group_name} to manage instance-console-connection in compartment ${var.workload_compartment_name}",
    # Ability to create and list subscriptions to images in the partner Image catalog.
    "Allow group ${var.workload_admins_group_name} to manage app-catalog-listing in compartment ${var.workload_compartment_name}",
    # Ability to create, update and delete dedicated Virtual Machine Hosts
    "Allow group ${var.workload_admins_group_name} to manage dedicated-vm-hosts in compartment ${var.workload_compartment_name}"
  ]
}

resource "oci_identity_policy" "workload_admins_policies_network" {
  compartment_id = var.network_compartment_id
  description    = "OCI Landing Zone Workload User Policy"
  name           = "OCI-LZ-${var.workload_compartment_name}-Workload-Admin-Policy-Network"

  freeform_tags = {
    "Description" = "Network Policy for Workload Specific Administrators",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location

  }

  statements = [
    "Allow group ${var.workload_admins_group_name} to use virtual-network-family in compartment ${var.network_compartment_name}",
  ]
}
# ---------------------------------------------------------------------------------------------------------------------
# IAM Policies Workload Users
# ---------------------------------------------------------------------------------------------------------------------
resource "oci_identity_policy" "workload_users_policies" {
  compartment_id = var.workload_compartment_id
  description    = "OCI Landing Zone Workload User Policy"
  name           = "OCI-LZ-${var.workload_compartment_name}-Workload-User-Policy"

  freeform_tags = {
    "Description" = "Policy for Workload Specific Users",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }

  statements = [
    # Ability to do everything with instances launched into the cloud network and subnets 
    "Allow group ${var.workload_users_group_name} to manage instance in compartment ${var.workload_compartment_name}",
    # Ability to create instance console creation
    "Allow group ${var.workload_users_group_name} to manage instance-console-connection in compartment ${var.workload_compartment_name}",
    # Ability to list and create subscriptions to images in partner image catalog.
    "Allow group ${var.workload_users_group_name} to manage app-catalog-listing in compartment ${var.workload_compartment_name}",
    # Ability to launch instances on dedicated virtual machine hosts
    "Allow group ${var.workload_users_group_name} to use dedicated-vm-hosts in compartment ${var.workload_compartment_name}",
  ]
}

resource "oci_identity_policy" "workload_users_policies_network" {
  compartment_id = var.network_compartment_id
  description    = "OCI Landing Zone Workload User Policy"
  name           = "OCI-LZ-${var.workload_compartment_name}-Workload-User-Policy-Network"

  freeform_tags = {
    "Description" = "Network Policy for Workload Specific Users",
    "CostCenter"  = var.tag_cost_center,
    "GeoLocation" = var.tag_geo_location
  }

  statements = [
    "Allow group ${var.workload_users_group_name} to use virtual-network-family in compartment ${var.network_compartment_name}",
  ]
}
