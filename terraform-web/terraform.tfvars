# Resource Group
resource_group_name = "testgcg2"
location = "Norway East"

# ACR
acr_name = "gcgacreg"
acr_sku = "Standard"
acr_admin_enabled = true

# PostgreSQL
postgres_server_name = "psqlserver2"
postgres_admin_username = "postgres"
postgres_admin_password = "Passord123"
postgres_database_name = "pgsqldb2"
postgres_backup_file = "C:/Users/Thor/Desktop/terraform-web/dump/dump-postgres-202411221519.sql"

# Web App
app_service_name = "my-webapp"
container_image = "ecommerce-pgsql"
container_image_tag = "latest"

# VNet
vnet_name     = "gcg-vnet"
address_space = ["10.0.0.0/16"]