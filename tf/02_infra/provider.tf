provider "aws" {
  region = var.region
}

#something 2
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = "1.5.1"

  backend "s3" {
    region = "eu-west-3"
    bucket = "xpertsummit-remote-state-development-student06"
    key    = "terraform.tfstate"
  }
}
