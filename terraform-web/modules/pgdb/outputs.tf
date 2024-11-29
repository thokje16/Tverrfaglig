# modules/pgdb/outputs.tf
output "postgres_server_name" {
  description = "The name of the PostgreSQL Server"
  value       = azurerm_postgresql_flexible_server.postgres_server.name
}

output "postgres_database_name" {
  description = "The name of the PostgreSQL Database"
  value       = azurerm_postgresql_flexible_server_database.postgres.name
}

output "postgres_server_fqdn" {
  description = "The FQDN of the PostgreSQL Server"
  value       = azurerm_postgresql_flexible_server.postgres_server.fqdn
}

output "postgres_server_id" {
  description = "ID of the PostgreSQL server."
  value       = azurerm_postgresql_flexible_server.postgres_server.id
}
