
# Example: Register an Azure Policy definition (simplified)
provider "azurerm" {
  features {}
}

resource "azurerm_policy_definition" "no_public_storage" {
  name         = "no-public-storage-2025-demo"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Deny public storage accounts"
  policy_rule  = file("${path.module}/policy-definition.json")
}
