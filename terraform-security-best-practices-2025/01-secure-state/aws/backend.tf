terraform {
  backend "s3" {
    bucket                      = "your-bucket"
    key                         = "prod-infrastructure.tfstate"
    region                      = "eu-central-1"
    endpoint                    = "http://{custom-endpoint}"
    use_lockfile                = true   # Native S3 locking
    skip_credentials_validation = true
  }
}

required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }
}

provider "aws" {
  region                      = "eu-central-1"
  skip_credentials_validation = true

  endpoints {
    s3 = "http://{custom-endpoint}"
  }
}
