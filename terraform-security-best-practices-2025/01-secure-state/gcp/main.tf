provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

# Simple GCP demo resource (storage bucket)
resource "google_storage_bucket" "demo" {
  name     = "tf-demo-gcs-2025-example"
  location = "US"
}
