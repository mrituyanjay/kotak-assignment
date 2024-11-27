provider "aws" {
  region = "ap-south-1"
  default_tags {
    tags = var.default_tags
  }
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
