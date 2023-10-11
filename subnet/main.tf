terraform {
  cloud {
    organization = "terraform_class990"

    workspaces {
      name = "infra-subnet"
    }
  } 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  
}

  

resource "aws_subnet" "main" {
  vpc_id     = "vpc-06aaae5f07a5497ab"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}