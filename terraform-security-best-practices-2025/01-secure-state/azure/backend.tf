# Azure remote backend example (secure)
# Make sure the storage account & container exist before using this backend.
terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"           # Replace with your RG
    storage_account_name  = "tfstate2025"          # Replace with your Storage Account
    container_name        = "tfstate"              # Blob container for state
    key                   = "azure.terraform.tfstate"

    # Security best practices:
    use_azuread_auth      = true                   # Use Azure AD for authentication (avoid access keys)

  }
}
