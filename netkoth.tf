module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "netkoth"

  ami                    = var.netkoth_server_ami
  instance_type          = var.netkoth_server_instance_type
  key_name               = aws_key_pair.netkoth_pair.key_name
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}