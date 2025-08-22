output "sql_server_fqdn" {
  value       = azurerm_mssql_server.main.fully_qualified_domain_name
}

output "sql_database_name" {
  value       = azurerm_mssql_database.main.name
}

output "database_connection_string" {
  sensitive   = true
  value = format(
    "jdbc:sqlserver://%s:1433;database=%s;user=%s;password=%s;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;",
    azurerm_mssql_server.main.fully_qualified_domain_name,
    azurerm_mssql_database.main.name,
    var.sql_admin_username,
    var.sql_admin_password
  )
}
