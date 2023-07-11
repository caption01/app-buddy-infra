terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_codecommit_repository" "test" {
  repository_name = "MyTestRepository"
  description     = "This is the Sample App Repository"
}