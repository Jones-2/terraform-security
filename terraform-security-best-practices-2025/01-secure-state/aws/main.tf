provider "aws" {
  region = "us-east-1"
}

# Simple AWS demo resource (S3 bucket)
resource "aws_s3_bucket" "demo" {
  bucket = "tf-demo-bucket-2025-example"
  acl    = "private"
}
