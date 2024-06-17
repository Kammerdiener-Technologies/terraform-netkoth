module "compromised" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = var.compromised_server_ami

  name = "compromised-${each.key}"

  ami                         = each.value
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  vpc_security_group_ids      = [aws_security_group.compromised_netkoth_security_group.id]
  associate_public_ip_address = false
  subnet_id                   = module.vpc.private_subnets[0]

  tags = {
    Terraform   = "true"
    Compromised = "true"
  }
}

resource "aws_security_group" "compromised_netkoth_security_group" {
  name = "compromised-netkoth"
  description = "Allow EVERYTHING to compromised instances"
  vpc_id = module.vpc.vpc_id

  ingress {
    description = "Allow all inbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Terraform   = "true"
    Compromised = "true"
  }
}