terraform {
   required_providers {
       aws = {
            source = "hashicorp/aws"
            #version = "~> 3.2"
       }
   } 
}

provider "aws" {
  profile = default
  region = var.aws-region
}