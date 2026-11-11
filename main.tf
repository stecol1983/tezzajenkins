terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2ca68057-5938-4373-a482-03c774896906"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-sa-collinss"
    storage_account_name = "jenkinsstate-collinss"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg-collinss-test-1"
  location = "westeurope"
}
