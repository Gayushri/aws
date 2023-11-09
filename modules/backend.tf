terraform {
  backend "s3" {
    key            = "global/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform_lock"
  }
}

