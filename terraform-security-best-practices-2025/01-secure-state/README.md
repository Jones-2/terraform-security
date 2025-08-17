# Secure State - Remote Backends

This folder shows examples of configuring remote state backends in each cloud:
- azure/backend.tf -> Azure Storage backend
- aws/backend.tf   -> S3 backend with DynamoDB locking
- gcp/backend.tf   -> GCS backend

Steps (high level):
1. Create the remote bucket/container and locking table (if applicable) manually or via cloud console.
2. Update the backend config placeholders (names, regions, resource group).
3. Run `terraform init` to initialize and migrate state to the remote backend.
4. Ensure proper IAM/RBAC so only authorized identities can access state.

