variable "aws_region" {
  description = "AWS region for resource deployment"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "Name of the route table"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet configuration"
  type = map(object({
    cidr_block = string
    az         = string
    name       = string
  }))
}