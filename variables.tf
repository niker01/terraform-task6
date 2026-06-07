variable "project_id" {
  type        = string
  description = "Project identifier used for naming resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.10.0.0/16"
}

variable "public_subnets" {
  type = list(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))

  description = "List of public subnets configuration"
}