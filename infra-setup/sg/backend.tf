terraform {
  backend "s3" {
    bucket         = "cherry-assignment"
    key            = "ec2/sg.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock-infra"
  }
}
