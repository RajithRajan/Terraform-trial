# Terraform Output Values

# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.ec2trial.public_ip
}

# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.ec2trial.public_dns
}

# EC2 Private IP
output "instance_privateip" {
  description = "EC2 Instance Private DNS"
  value = aws_instance.ec2trial.private_ip
}