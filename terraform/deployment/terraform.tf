terraform {
  required_version = ">= 0.15"
  required_providers {
    aws = ">= 3.63.0"
  }

  backend "s3" {
    bucket         = "personal-terraform-state-rhbrarwfr70kc24t"
    key            = "elliotalexander.uk"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "eu-west-2"
}
