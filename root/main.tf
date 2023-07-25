terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "terraform-appbuddy"
    key    = "app/root"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

module "vpc-subnet" {
  source = "./modules/vpc-subnet"
}

module "ec2" {
  source = "./modules/ec2"

  subnet_public_id      = module.vpc-subnet.subnet_public_id
  aws_security_group_id = module.vpc-subnet.aws_security_group_id

  depends_on = [module.vpc-subnet]
}
