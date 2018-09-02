###
#
# Remote State
#
terraform {
  backend "s3" {
    bucket = "anorlondo448-terraform-for-APIGateway-to-Elasticsearch"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
