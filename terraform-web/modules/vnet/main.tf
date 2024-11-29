resource "azurerm_virtual_network" "vnet" {
  name                = "${var.resource_group_name}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "service" {
  name                 = "service"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]

  delegation {
    name = "webapp"
    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}

resource "azurerm_subnet" "endpoint" {
  name                 = "endpoint"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
  
  private_endpoint_network_policies_enabled = true
}

resource "azurerm_private_endpoint" "psql" {
  name                = "psql-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = azurerm_subnet.endpoint.id

  private_service_connection {
    name                           = "psql-privatelink"
    private_connection_resource_id = var.postgres_server_id
    is_manual_connection          = false
    subresource_names            = ["postgresqlServer"]
  }
}