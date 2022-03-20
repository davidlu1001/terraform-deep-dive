# Terraform 0.12 and earlier
#provider "aws" {
#  version = "~> 3.0"
#  region  = "ap-southeast-2"
#}

# Terraform 0.13 and later
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}
