provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.9"
    }
  }
  backend "s3" {
    bucket = "flowplay"
    key    = "bucket-state/flowplay.tfstate"
    region = "us-east-1"
    # Remove o perfil, pois o GitHub Actions vai usar as credenciais configuradas
  }
  required_version = ">=1.1.0"
}
