variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the resources."
  type        = string
}

variable "postgres_server_name" {
  description = "The name of the PostgreSQL Server."
  type        = string
}

variable "postgres_admin_username" {
  description = "The admin username for the PostgreSQL Server."
  type        = string
}

variable "postgres_admin_password" {
  description = "The admin password for the PostgreSQL Server."
  type        = string
}

variable "postgres_database_name" {
  description = "The name of the PostgreSQL Database."
  type        = string
}

variable "postgres_backup_file" {
  description = "The path to the local PostgreSQL backup file."
  type        = string
}