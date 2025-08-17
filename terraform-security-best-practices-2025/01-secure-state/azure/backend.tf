# Azure remote backend example (secure)
# Make sure the storage account & container exist before using this backend.
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"     # replace with your rg
    storage_account_name = "tfstate2025"    # replace with your storage account
    container_name       = "tfstate"
    key                  = "azure.terraform.tfstate"
  }
}
