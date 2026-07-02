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

