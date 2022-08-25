module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "netkoth"

  ami                         = var.netkoth_server_ami
  instance_type               = var.netkoth_server_instance_type
  key_name                    = aws_key_pair.netkoth_pair.key_name
  monitoring                  = true
  vpc_security_group_ids      = [module.netkoth_security_group.this_security_group_id]
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
  }
}

module "netkoth_security_group" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "netkoth"
  description = "security group for the netkoth server"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "https-443-tcp"]
  egress_rules        = ["all-all"]
}