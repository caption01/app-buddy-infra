terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "terraform-appbuddy"
    key    = "app/project28-avocado"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

module "s3" {
  source = "../modules/s3"

  bucket       = var.bucket
  tag_app      = var.tag_app
  tag_provider = var.tag_provider
}

module "codecommit" {
  source = "../modules/codecommit"

  repo_name    = var.repo_name
  tag_app      = var.tag_app
  tag_provider = var.tag_provider
}
