
resource "azurerm_postgresql_flexible_server" "postgres_server" {
  name                   = var.postgres_server_name
  resource_group_name    = var.resource_group_name
  location              = var.location
  version               = "13"
  administrator_login    = var.postgres_admin_username
  administrator_password = var.postgres_admin_password

  sku_name              = "B_Standard_B1ms"

  storage_mb = 32768
  backup_retention_days = 7
  geo_redundant_backup_enabled = false

  public_network_access_enabled = true
}

resource "azurerm_postgresql_flexible_server_database" "postgres" {
  name                = var.postgres_database_name
  server_id           = azurerm_postgresql_flexible_server.postgres_server.id
  charset             = "UTF8"
  collation          = "en_US.utf8"
}