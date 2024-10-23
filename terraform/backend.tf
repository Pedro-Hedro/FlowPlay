provider "aws" {
  region  = "us-east-1"
  profile = "default" # this is configured in ~/.aws/credentials. Must be hardcoded
  default_tags { tags = var.tags }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.9"
    }
  }
  backend "s3" {
    bucket  = "flowplay"
    key     = "bucket-state/flowplay.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
  required_version = ">=1.1.0" # Required terraform version
}

