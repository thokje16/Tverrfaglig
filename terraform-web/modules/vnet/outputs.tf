output "vnet_id" {
  description = "ID of the virtual network."
  value       = azurerm_virtual_network.vnet.id
}

output "service_subnet_id" {
  description = "ID of the service subnet."
  value       = azurerm_subnet.service.id
}

output "endpoint_subnet_id" {
  description = "ID of the endpoint subnet."
  value       = azurerm_subnet.endpoint.id
}