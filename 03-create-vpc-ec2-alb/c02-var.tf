# Local variables
locals {
  name = "bus-app1-rgn"
  common_tags = {
    Owner       = "Raj"
    Environment = "Dev"
    Automation  = "Yes"
  }
}

# defining variables needed

variable "aws_region" {
  description = "Aws region for execution of the terraform script"
  type        = string
  default     = "ap-south-1"
}


## VPC variables
variable "vpc_cidr" {
  description = "Aws EC2 instance type"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = "Aws EC2 instance type"
  type        = string
  default     = "t2.micro"
}

## EC2 variables
variable "private_instance_count" {
  description = "Count of private instances"
  type        = number
}

## EC2 variables
variable "ec2_iam_role" {
  description = "IAM role for the EC2 instance"
  type        = string
}