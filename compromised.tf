module "compromised_1" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "compromised-1"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "compromised_2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "compromised-2"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "compromised_3" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "compromised-3"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "compromised_4" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "compromised-4"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "compromised_5" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "compromised-5"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "compromised_6" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "compromised-6"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}