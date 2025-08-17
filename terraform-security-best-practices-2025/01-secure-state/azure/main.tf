# Simple Azure demo resource (storage account) - shows a resource to apply after backend is configured.
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo" {
  name     = "demo-rg"
  location = "eastus"
}

resource "azurerm_storage_account" "demo" {
  name                     = "tfdemo2025sa"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
