locals {

  environment_type = "nonprod"

  # Network Resource Groups
  network_resource_group_name   = "RG-${upper(var.application)}-NETWORK-${upper(replace(var.primary_location, " ", ""))}-${upper(local.environment_type)}"
  

  # Database Resource Groups
  database_resource_group_name   = "RG-${upper(var.application)}-DATABASE-${upper(replace(var.primary_location, " ", ""))}-${upper(local.environment_type)}"
  
  primary_sql_server_name =
    "${lower(var.application)}-${lower(replace(var.primary_location," ",""))}-sql-${local.environment_type}"

  secondary_sql_server_name =
    "${lower(var.application)}-${lower(replace(var.secondary_location," ",""))}-sql-${local.environment_type}"

}