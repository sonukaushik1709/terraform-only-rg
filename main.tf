terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "9a19641f-a0da-455d-9b90-51dc0d0cdfee"
}
resource "azurerm_resource_group" "rg_group1" {
  name     = "sapna1"
  location = "westus"
}

resource "azurerm_resource_group" "rg_group2" {
  name     = "sapna2"
  location = "westus"
}
