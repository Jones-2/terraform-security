# GCS backend example
terraform {
  backend "gcs" {
    bucket = "my-terraform-state-gcs"   # replace with your bucket
    prefix = "gcp"
  }
}
