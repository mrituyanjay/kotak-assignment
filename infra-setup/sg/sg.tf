module "ssh-sg" {
  source                   = "terraform-aws-modules/security-group/aws"
  name                     = var.ssh_sg_name
  vpc_id                   = data.aws_vpcs.vpc.ids[0]
  ingress_cidr_blocks      = []
  ingress_rules            = []
  egress_rules             = ["all-all"]
  ingress_with_cidr_blocks = var.ingress_with_cidr_blocks_ssh
}

module "jenkins-sg" {
  source                   = "terraform-aws-modules/security-group/aws"
  name                     = var.jenkins_sg_name
  vpc_id                   = data.aws_vpcs.vpc.ids[0]
  ingress_cidr_blocks      = []
  ingress_rules            = []
  egress_rules             = ["all-all"]
  ingress_with_cidr_blocks = var.ingress_with_cidr_blocks_jenkins
}


data "aws_vpcs" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["cherry-assignment-vpc"]
  }
}