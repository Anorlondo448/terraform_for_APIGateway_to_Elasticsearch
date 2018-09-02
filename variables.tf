###
#
# Common
#
## 対象となるプロバイダ(AWS,GCP,etc)を指定します
provider "aws" {
  region = "us-east-1"
}

# 動的にアカウントIDを取ってくる
data "aws_caller_identity" "current" {}

# 動的にリージョンを取ってくる
data "aws_region" "current" {}

# tagに付与する固定文字列
variable "tag_name" {
  default = "es"
}

# VPCのCIDR
variable "vpc_resource_cidr" {
  default = "10.100.0.0/16"
}

# Public SubnetのCIDR
variable "public_subnet_1a_cidr" {
  default = "10.100.1.0/24"
}

# Private Subnet(1a)のCIDR
variable "private_subnet_1a_cidr" {
  default = "10.100.10.0/24"
}

# Private Subnet(1c)のCIDR
variable "private_subnet_1c_cidr" {
  default = "10.100.11.0/24"
}
