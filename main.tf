terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}
module "s3_bucket" {
  source = "../../"
}

module "dynamodb_table" {
  source = "../../"
}


