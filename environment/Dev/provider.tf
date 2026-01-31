terraform {
  required_version = ">= 1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "terraformfile"
    storage_account_name = "myinfrastatefile"
    container_name       = "mystatefile"
    key                  = "prod/infra.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "eac9ee72-3e50-4c23-b8c3-081a1f02b52a"
}