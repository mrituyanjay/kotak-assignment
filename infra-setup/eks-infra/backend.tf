terraform {
  backend "s3" {
    bucket         = "cherry-assignment"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock-infra"
  }
}
