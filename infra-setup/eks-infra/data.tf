data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "cherry-assignment"
    key    = "network/vpc.tfstate"
    region = "ap-south-1"

  }
}
