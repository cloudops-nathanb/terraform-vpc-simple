variable "region" {
  description = "region for resource creation"
  type        = string
  default = "us-east-2"
}

variable "base_cidr_block" {
  default = "10.0.0.0/20"
}

variable "vpc_name" {
  default = "terra"
}

# Subnets
variable "sub_priv_a" {
  default = "10.0.4.0/24"
}

variable "sub_priv_b" {
  default = "10.0.5.0/24"
}

variable "sub_priv_c" {
  default = "10.0.6.0/24"
}

variable "sub_pub_a" {
  default = "10.0.12.0/24"
}

variable "sub_pub_b" {
  default = "10.0.13.0/24"
}

variable "sub_pub_c" {
  default = "10.0.14.0/24"
}
