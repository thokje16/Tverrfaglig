output "login_server" {
  description = "Login server of the Azure Container Registry."
  value       = var.acr_login_server
}

output "admin_username" {
  description = "Admin username for the Azure Container Registry."
  value       = var.acr_admin_username
}

output "admin_password" {
  description = "Admin password for the Azure Container Registry."
  value       = var.acr_admin_password
  sensitive   = true
}
output "webapp_name" {
  value = azurerm_linux_web_app.webapp.name
}

output "webapp_url" {
  description = "URL of the Web App."
  value       = "https://${azurerm_linux_web_app.webapp.default_hostname}"
}