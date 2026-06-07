output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "vpc_cidr" {
  value       = aws_vpc.main.cidr_block
  description = "VPC CIDR block"
}

output "public_subnet_ids" {
  value       = [for s in aws_subnet.public : s.id]
  description = "IDs of public subnets"
}

output "public_subnet_cidr_block" {
  value       = [for s in aws_subnet.public : s.cidr_block]
  description = "CIDR blocks of public subnets"
}

output "public_subnet_availability_zone" {
  value       = [for s in aws_subnet.public : s.availability_zone]
  description = "AZs of public subnets"
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.igw.id
  description = "Internet Gateway ID"
}

output "routing_table_id" {
  value       = aws_route_table.rt.id
  description = "Route Table ID"
}