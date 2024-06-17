module "netkoth_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "netkoth"

  ami                         = var.netkoth_server_ami
  instance_type               = var.netkoth_server_instance_type
  key_name                    = aws_key_pair.netkoth_pair.key_name
  monitoring                  = true
  vpc_security_group_ids      = [aws_security_group.netkoth_scoring_security_group.id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Compromised = "false"
  }
}

resource "aws_security_group" "netkoth_scoring_security_group" {
  name = "netkoth-scoring"
  description = "Allow HTTP and SSH traffic to scoring server"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Terraform   = "true"
    Compromised = "false"
  }
}
