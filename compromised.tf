module "compromised" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = var.compromised_server_ami

  name = "compromised-${each.key}"

  ami                         = each.value
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false
  subnet_id                   = module.vpc.private_subnets[0]

  tags = {
    Terraform   = "true"
    Compromised = "true"
  }
}
