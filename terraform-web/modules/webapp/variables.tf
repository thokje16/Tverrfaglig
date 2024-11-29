variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "app_service_name" {
  description = "Name of the web app"
  type        = string
}


variable "container_image" {
  description = "Container image name"
  type        = string
}

variable "container_image_tag" {
  description = "Container image tag"
  type        = string
}



variable "acr_login_server" {
  description = "The login server URL of the Azure Container Registry."
  type        = string
}

variable "acr_admin_username" {
  description = "The admin username for the Azure Container Registry."
  type        = string
}

variable "acr_admin_password" {
  description = "The admin password for the Azure Container Registry."
  type        = string
  sensitive   = true
}
variable "subnet_id" {
  description = "ID of the subnet for vnet integration"
  type        = string
}