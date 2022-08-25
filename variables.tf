variable "vpc_name" {
  type        = string
  default     = "netkoth"
  description = "What is the name of the Net KOTH VPC"
}

variable "logs" {
  type        = bool
  default     = false
  description = "Whether to capture logs"
}

variable "netkoth_server_ami" {
  type        = string
  default     = "ami-0f25c84483cb26390"
  description = "What AMI do you want to use to score netkoth"
}

variable "netkoth_server_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "What instance type do you want for the netkoth instance"
}

variable "netkoth_server_key" {
  type        = string
  default     = ""
  description = "What key pair do you want for the NetKOTH server"
}

variable "netkoth_server_ami" {
  type        = string
  default     = "netkoth"
  description = "What AMI do you want to use to score netkoth"
}

variable "netkoth_server_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "What instance type do you want for the netkoth instance"
}

variable "compromised_server_key" {
  type        = string
  default     = ""
  description = "What key pair do you want for the compromised machines"
}

variable "enable_vpn" {
  type        = bool
  default     = true
  description = "whether or not to create the VPN"
}