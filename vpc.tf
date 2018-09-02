###
#
# VPC
#
resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_resource_cidr}"
  instance_tenancy = "default"

  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags {
    Name = "${var.tag_name}-vpc"
  }
}