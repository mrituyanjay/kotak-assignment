variable "ssh_key" {
  type    = string
  default = "task-key"
}

variable "cluster_name" {
  type    = string
  default = "cherry-eks-cluster"
}

variable "eks_node_sg_name" {
  type        = string
  default     = "Eks Security Group"
  description = "Eks worker node security group name"
}

variable "ami_type" {
  type        = string
  default     = ""
  description = "ami type"
}


variable "eks_node_group_name" {
  type        = string
  default     = ""
  description = "description"
}

variable "region" {
  type        = string
  description = "Region name where our EKS going to provision"
}

variable "w1_instance_type" {
  type        = list(string)
  default     = ["xyz"]
  description = "worker1 instance type"
}



variable "w1_disk_size" {
  type        = number
  default     = 20
  description = "disk size of w1 node group"
}

variable "w1_max_capacity" {
  type        = number
  default     = 2
  description = "w1 node group max capacity"
}

variable "w1_desired_capacity" {
  type        = number
  default     = 1
  description = "w1 node group desired capacity"
}

variable "w1_min_capacity" {
  type        = number
  default     = 1
  description = "w1 node group min capacity"
}

variable "w1_capacity_type" {
  type        = string
  default     = ""
  description = "Capacity type of worker1 node group"
}


variable "eks_cluster_version" {
  type        = string
  default     = ""
  description = "Eks cluster version"
}
