variable "vpc_name" {
  type        = string
  default     = "infra-vpc"
  description = "Enter vpc name"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "Enter the vpc cidr"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24"]
  description = "Enter the public subnet cidr"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  default     = ["10.10.3.0/24", "10.10.4.0/24", "10.10.5.0/24"]
  description = "Enter the public subnet cidr"
}

variable "az" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  description = "Enter the Availability Zones"
}

variable "default_tags" {
  type = map(any)
  default = {
    Team  = "cherry"
    Usage = "task"
  }
  description = "Enter the tags"
}
