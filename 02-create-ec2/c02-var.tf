# defining variables needed

variable "aws_region" {
  description = "Aws region for execution of the terraform script"
  type = string
  default = "ap-south-1"
}

variable "instance_type" {
  description = "Aws EC2 instance type"
  type = string
  default = "t2.micro"  
}