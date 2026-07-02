locals {

  environment_type = "nonprod"

  # Network Resource Groups
  network_resource_group_name   = "RG-${upper(var.application)}-NETWORK-${upper(replace(var.primary_location, " ", ""))}-${upper(local.environment_type)}"
  

  # Database Resource Groups
  database_resource_group_name   = "RG-${upper(var.application)}-DATABASE-${upper(replace(var.primary_location, " ", ""))}-${upper(local.environment_type)}"
  
}