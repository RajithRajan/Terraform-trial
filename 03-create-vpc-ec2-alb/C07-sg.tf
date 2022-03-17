module "private-sg" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "4.9.0"
  name        = "${local.name}-private-sg"
  description = "Security group for private instances"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = [var.vpc_cidr]
  ingress_rules       = ["all-all"]

  egress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules       = ["all-all"]
}

module "public-sg" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "4.9.0"
  name        = "${local.name}-public-sg"
  description = "Security group for public instances or lb"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 81
      to_port     = 81
      protocol    = 6
      description = "Allow port 81 from internet"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  egress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules       = ["all-all"]
}