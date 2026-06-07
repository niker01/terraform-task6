variable "project_id" {
  type        = string
  description = "Project identifier used for naming resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnets" {
  type        = any
  description = "List of public subnets configuration"
}