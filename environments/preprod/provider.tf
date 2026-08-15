terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateshubham2026"
    container_name       = "tfstate"
    key                  = "preprod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}