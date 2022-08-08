module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name = var.vpc_name

  enable_vpn_gateway   = var.enable_vpn
  azs                  = data.aws_availability_zones.available.names
  cidr                 = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_nat_gateway   = true
  private_subnets      = ["10.0.25.0/24", "10.0.26.0/24", "10.0.27.0/24"]
  public_subnets       = ["10.0.125.0/24", "10.0.126.0/24", "10.0.127.0/24"]
  single_nat_gateway   = true
}

resource "aws_cloudwatch_log_group" "vpc_flow_logs" {
  count = var.logs ? 1 : 0

  name = "flowlogs/${module.vpc.vpc_id}"
}

resource "aws_flow_log" "eks_vpc" {
  count = var.logs ? 1 : 0

  iam_role_arn    = aws_iam_role.flow_logs.arn
  log_destination = aws_cloudwatch_log_group.vpc_flow_logs.arn
  traffic_type    = "ALL"
  vpc_id          = module.vpc.vpc_id
}