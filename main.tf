provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source = "../../"
}


