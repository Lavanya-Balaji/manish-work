locals {

  environment_type = "prod"

  # Network Resource Groups
  primary_network_resource_group_name   = "RG-${upper(var.application)}-NETWORK-${upper(replace(var.primary_location, " ", ""))}-${upper(local.environment_type)}"
  secondary_network_resource_group_name = "RG-${upper(var.application)}-NETWORK-${upper(replace(var.secondary_location, " ", ""))}-${upper(local.environment_type)}"

  # Database Resource Groups
  primary_database_resource_group_name   = "RG-${upper(var.application)}-DATABASE-${upper(replace(var.primary_location, " ", ""))}-${upper(local.environment_type)}"
  secondary_database_resource_group_name = "RG-${upper(var.application)}-DATABASE-${upper(replace(var.secondary_location, " ", ""))}-${upper(local.environment_type)}"
}