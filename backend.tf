terraform {
  backend "s3" {
    bucket  = "terraform-state-jlamenza"
    key     = "terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
  }
    }