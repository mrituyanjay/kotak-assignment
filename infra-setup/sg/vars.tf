variable "ssh_sg_name" {
  type        = string
  default     = "ssh_sec_group"
  description = "Enter name of security group"
}

variable "ingress_with_cidr_blocks_ssh" {
  type        = list(any)
  default     = [{ from_port = 22, to_port = 22, protocol = "tcp", description = "For Ssh", cidr_blocks = "103.51.136.95/32" }]
  description = "ssh port"
}

variable "ingress_with_cidr_blocks_jenkins" {
  type        = list(any)
  default     = [{ from_port = 8080, to_port = 8080, protocol = "tcp", description = "For jenkins", cidr_blocks = "103.51.136.95/32" }]
  description = "Jenkins port"
}

variable "jenkins_sg_name" {
  type        = string
  default     = "jenkins_sec_group"
  description = "Enter name of security group"
}