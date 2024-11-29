variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "acr_name" {
  type = string
}

variable "acr_sku" {
  type = string
}

variable "acr_admin_enabled" {
  type = bool
}

variable "postgres_server_name" {
  type = string
}

variable "postgres_admin_username" {
  type = string
}

variable "postgres_admin_password" {
  type = string
  sensitive = true
}

variable "postgres_database_name" {
  type = string
}

variable "postgres_backup_file" {
  type = string
}

variable "app_service_name" {
  type = string
}

variable "container_image" {
  type = string
}

variable "container_image_tag" {
  type = string
}
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "Address space for virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
