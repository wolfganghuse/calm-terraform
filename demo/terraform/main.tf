# Configure Nutanix Objects as backend for Terraform state files https://www.terraform.io/docs/backends/types/s3.html
terraform {
  backend "s3" {
    bucket = "terraform"
    endpoint = "http://10.200.100.231"
    key = "demo/terraform.tfstate"
    region = "us-east-1"
    profile = "objects"
    shared_credentials_file = ".credentials"
    skip_credentials_validation = true
#    skip_metadata_api_check = true
#    skip_region_validation = true
    force_path_style = true
  }
}

# Configure the AWS Provider
provider "aws" {
  version = "~> 3.0"
  region  = var.aws_region
  shared_credentials_file = ".credentials"

}

## Create a VPC

#resource "aws_vpc" "example" {
# cidr_block = var.vpc_cidr
#}
