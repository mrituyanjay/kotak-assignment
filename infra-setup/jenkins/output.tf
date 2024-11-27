output "ec2_instance" {
  description = "ID of project VPC"
  value       = module.ec2_instance
}

output "ec2_instanceid" {
  description = "ID of project VPC"
  value       = module.ec2_instance.id
}

output "ec2_publicip" {
  description = "ID of project VPC"
  value       = resource.aws_eip.bastion-eip.public_ip
}

output "ec2_privateip" {
  description = "ID of project VPC"
  value       = module.ec2_instance.private_ip
}
