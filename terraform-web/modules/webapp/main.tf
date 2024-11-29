resource "azurerm_service_plan" "webapp" {
  name                = "${var.resource_group_name}-appserviceplan"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "S1"
  
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "${var.resource_group_name}-webapp"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.webapp.id

  site_config {
    always_on      = "true"

    application_stack {
      docker_image     = "${var.acr_login_server}//${var.container_image}:latest"
      docker_image_tag = "latest"
    }
  }


  app_settings = {
    "DOCKER_REGISTRY_SERVER_URL"      = "https://${var.acr_login_server}"
    "DOCKER_REGISTRY_SERVER_USERNAME" = var.acr_admin_username
    "DOCKER_REGISTRY_SERVER_PASSWORD" = var.acr_admin_password
  }
}
resource "azurerm_app_service_virtual_network_swift_connection" "vnet_integration" {
  app_service_id = azurerm_linux_web_app.webapp.id
  subnet_id      = var.subnet_id
}