module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "vulnerable-1"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "vulnerable-2"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "vulnerable-3"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "vulnerable-4"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "vulnerable-5"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}

module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "vulnerable-6"

  ami                         = var.compromised_server_ami
  instance_type               = var.compromised_instance_type
  key_name                    = aws_key_pair.compromised_machines_pair.key_name
  monitoring                  = true
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
  }
}