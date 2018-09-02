###
#
# Remote State
#
terraform {
  backend "s3" {
    bucket = "anorlondo448-terraform-for-apigateway-to-elasticsearch"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
