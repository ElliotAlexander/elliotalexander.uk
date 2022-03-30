terraform {
  required_version = ">= 0.15"
  required_providers {
    aws = ">= 3.63.0"
  }
}

provider "aws" {
  region = "eu-west-2"
}
