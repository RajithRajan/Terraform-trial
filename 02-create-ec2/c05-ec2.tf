# EC2 instance creation

resource "aws_instance" "ec2trial" {
    ami = data.aws_ami.amzlinux.id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.sg_web_server.id]
    user_data = file("${path.module}/user-data.sh")
    associate_public_ip_address = true
    tags = {
      "Name" = "ec2-web-trial"
      "env" = "Trial"
    }
}