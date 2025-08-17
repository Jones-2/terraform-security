provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

# Example: use Google Secret Manager
resource "google_secret_manager_secret" "demo" {
  secret_id = "demo-db-password"
  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "v" {
  secret      = google_secret_manager_secret.demo.name
  secret_data = "REPLACE_WITH_SECRET_BASE64_OR_USE_GS_TO_UPLOAD"
}

data "google_secret_manager_secret_version" "vdata" {
  secret = google_secret_manager_secret.demo.name
}

output "secret_value" {
  value     = data.google_secret_manager_secret_version.vdata.secret_data
  sensitive = true
}
