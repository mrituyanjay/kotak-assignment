output "vpc" {
  description = "ID of project VPC"
  value       = module.vpc
}

output "vpcId" {
  description = "ID of project VPC"
  value       = module.vpc.vpc_id
}
