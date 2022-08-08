resource "aws_key_pair" "netkoth_pair" {
  key_name   = "netkoth"
  public_key = var.netkoth_server_key
}

resource "aws_key_pair" "compromised_machines_pair" {
  key_name   = "compromised"
  public_key = var.compromised_server_key
}