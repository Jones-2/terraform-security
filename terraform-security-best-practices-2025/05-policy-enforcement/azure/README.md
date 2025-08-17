# Azure Policy Enforcement

This example shows how to deploy an Azure Policy definition using Terraform that denies storage accounts with public blob access enabled.

In production:
1. Assign the policy to a scope (subscription / management group / resource group).
2. Test with `terraform plan` and a non-production subscription first.
