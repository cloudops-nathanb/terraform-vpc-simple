# Manually added 'provider' block. 'local refers to a var on this page in the 'locals' block
provider "aws" {
  # region = local.region
  region = var.region
}

# locals {
#   region = "us-east-2"
# }

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  # name = "my-vpc"
  name = "${var.vpc_name}-nate"
  # cidr = "10.0.0.0/16"
  cidr = var.base_cidr_block

  # azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  azs             = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnets = ["${var.sub_priv_a}", "${var.sub_priv_b}", "${var.sub_priv_c}"]
  public_subnets  = ["${var.sub_pub_a}", "${var.sub_pub_b}", "${var.sub_pub_c}"]

#   enable_nat_gateway = true
#   enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}