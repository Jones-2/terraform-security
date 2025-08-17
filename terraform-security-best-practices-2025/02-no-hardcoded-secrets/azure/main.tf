provider "azurerm" {
  features {}
}

# Example: fetch secret from Azure Key Vault (data source)
resource "azurerm_resource_group" "demo" {
  name     = "secrets-demo-rg"
  location = "eastus"
}

resource "azurerm_key_vault" "kv" {
  name                        = "demo-kv-2025"
  resource_group_name         = azurerm_resource_group.demo.name
  location                    = azurerm_resource_group.demo.location
  tenant_id                   = "REPLACE_WITH_TENANT_ID"
  sku_name                    = "standard"
  purge_protection_enabled    = false
  soft_delete_enabled         = true
}

# Assume secret exists in KV; demo of reading a secret in Terraform
data "azurerm_key_vault_secret" "db_password" {
  name         = "dbPassword"
  key_vault_id = azurerm_key_vault.kv.id
}

output "db_password_from_kv" {
  value     = data.azurerm_key_vault_secret.db_password.value
  sensitive = true
}
