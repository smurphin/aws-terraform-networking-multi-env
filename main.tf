terraform {
# configure the backend for remote state file storage
  backend "s3" {}
  
  required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}

# Required provider
provider "aws" {
  region = var.region
}
