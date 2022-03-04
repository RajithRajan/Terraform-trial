# Terraform setting block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.2"
    }
  }
}

# Provider Blocks
provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

# Resource Block
resource "aws_instance" "ec2trial" {
  ami           = "ami-076754bea03bde973"
  instance_type = "t2.micro"
  tags = {
    NAME = "TestEC2"
  }
}