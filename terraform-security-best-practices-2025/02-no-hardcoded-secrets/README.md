# No Hardcoded Secrets

This folder demonstrates how to avoid hardcoding secrets:
- Use each cloud's secret manager (Key Vault, Secrets Manager, Secret Manager).
- Mark outputs as sensitive.
- Do not commit *.tfvars containing secrets; include examples like `terraform.tfvars.example`.

Best practices:
- Use environment variables, CI/CD secret stores, or the cloud secret manager.
- Add secrets files to .gitignore.
