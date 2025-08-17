provider "aws" {
  region = "us-east-1"
}

# Example: read secret from AWS Secrets Manager
resource "aws_secretsmanager_secret" "demo" {
  name = "demo-db-password"
}

resource "aws_secretsmanager_secret_version" "demo_version" {
  secret_id     = aws_secretsmanager_secret.demo.id
  secret_string = jsonencode({ password = "REPLACE_WITH_REAL_SECRET" })
}

data "aws_secretsmanager_secret_version" "current" {
  secret_id = aws_secretsmanager_secret.demo.id
}

output "secret_value" {
  value     = jsondecode(data.aws_secretsmanager_secret_version.current.secret_string)["password"]
  sensitive = true
}
