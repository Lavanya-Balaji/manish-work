module "network_rg" {
  source = "../../modules/resource-group"

  resource_group_name = local.network_resource_group_name
  location            = var.primary_location
  tags                = var.tags
}

module "database_rg" {
  source = "../../modules/resource-group"

  resource_group_name = local.database_resource_group_name
  location            = var.primary_location
  tags                = var.tags
}

module "primary_sql_server" {
  source = "../../modules/sql-server"

  name                = local.primary_sql_server_name
  resource_group_name = module.database_rg.name
  location            = module.database_rg.location

  administrator_login    = var.sql_admin_login
  administrator_password = var.sql_admin_password

  tags = var.tags
}

module "secondary_sql_server" {
  source = "../../modules/sql-server"

  name                = local.secondary_sql_server_name
  resource_group_name = module.database_rg.name
  location            = module.database_rg.location

  administrator_login    = var.sql_admin_login
  administrator_password = var.sql_admin_password

  tags = var.tags
}