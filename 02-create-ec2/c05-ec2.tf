# EC2 instance creation

resource "aws_instance" "ec2trial" {
    ami = data.aws_ami.amzlinux
    instance_type = var.instance_type
    security_groups = [aws_security_group.web_server]
    host_id = "ec2trial"
    user_data = file("${path.module}/user-data.sh")
    tags = {
      "name" = "EC2 trial 2"
      "env" = "Trial"
    }
}