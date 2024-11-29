terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }/*
     docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }*/
  }
}


provider "azurerm" {
  features {}
  subscription_id = "b8023013-bccf-48f8-aa8e-c7cc2aab91cb"
}
/*
provider "docker" {
  registry_auth {
    address  = data.azurerm_container_registry.acr.login_server
    username = data.azurerm_container_registry.acr.admin_username
    password = data.azurerm_container_registry.acr.admin_password
  }
}
*/
module "resource_group" {
  source              = "./modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
  depends_on = [ module.resource_group ]
}

module "postgres_database" {
  source                  = "./modules/pgdb"
  resource_group_name     = var.resource_group_name
  location               = var.location
  postgres_server_name    = var.postgres_server_name
  postgres_admin_username = var.postgres_admin_username
  postgres_admin_password = var.postgres_admin_password
  postgres_database_name  = var.postgres_database_name
  postgres_backup_file    = var.postgres_backup_file
  depends_on = [ module.resource_group ]
}

resource "null_resource" "docker_build_and_push" {
  provisioner "local-exec" {
    command = <<EOT
      cd C:\Users\Thor\eCommerce
      docker login ${module.acr.acr_login_server} -u ${module.acr.acr_admin_username} -p ${module.acr.acr_admin_password}
      docker build -t ecommerce-pgsql .
      docker tag ecommerce-pgsql:latest ${module.acr.acr_login_server}/ecommercepgsql
      docker push ${module.acr.acr_login_server}/ecommerce-pgsql
    EOT
    interpreter = ["PowerShell", "-Command"]
    environment = {
      ACR_LOGIN_SERVER = module.acr.acr_login_server
      ACR_USERNAME     = module.acr.acr_admin_username
      ACR_PASSWORD     = module.acr.acr_admin_password
    }
  }

  depends_on = [module.acr]
}

module "vnet" {
  source              = "./modules/vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name          = var.vnet_name
  address_space      = var.address_space
  postgres_server_id  = module.postgres_database.postgres_server_id
  depends_on          = [module.resource_group]
}

module "webapp" {
  source              = "./modules/webapp"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_name    = var.app_service_name
  acr_login_server    = module.acr.acr_login_server
  container_image     = var.container_image
  container_image_tag = var.container_image_tag
  acr_admin_username  = module.acr.acr_admin_username
  acr_admin_password  = module.acr.acr_admin_password
  subnet_id           = module.vnet.service_subnet_id
  depends_on          = [module.resource_group, null_resource.docker_build_and_push]
}
/*
module "webapp" {
  source              = "./modules/webapp"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_name    = var.app_service_name
  acr_login_server    = module.acr.acr_login_server
  container_image     = var.container_image
  container_image_tag = var.container_image_tag
  acr_admin_username  = module.acr.acr_admin_username
  acr_admin_password  = module.acr.acr_admin_password
  depends_on = [module.resource_group, null_resource.docker_build_and_push]
}
*/