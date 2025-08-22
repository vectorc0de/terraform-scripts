locals {

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  resource_group_name = "rg-${var.project_name}-${var.environment}-001"
  sql_server_name     = "sql-${var.project_name}-${var.environment}-001"
  sql_database_name   = "sqldb-${var.project_name}-${var.environment}-001"
  firewall_rule_name  = "fw-${var.project_name}-allow-dev-ip"
}

resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.tags
}

resource "azurerm_mssql_server" "main" {
  name                         = local.sql_server_name
  resource_group_name          = azurerm_resource_group.main.name
  location                     = azurerm_resource_group.main.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
  tags                         = local.tags
}

resource "azurerm_mssql_database" "main" {
  name           = local.sql_database_name
  server_id      = azurerm_mssql_server.main.id
  sku_name       = var.sql_database_sku
  tags           = local.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_mssql_firewall_rule" "main" {
  name                = local.firewall_rule_name
  server_id           = azurerm_mssql_server.main.id
  start_ip_address    = var.firewall_start_ip
  end_ip_address      = var.firewall_end_ip
}
