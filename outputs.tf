output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "vpc_cidr" {
  value       = aws_vpc.main.cidr_block
  description = "VPC CIDR"
}

output "public_subnet_ids" {
  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id,
    aws_subnet.public_c.id
  ]
  description = "Public subnet IDs"
}

output "public_subnet_cidr_block" {
  value = [
    aws_subnet.public_a.cidr_block,
    aws_subnet.public_b.cidr_block,
    aws_subnet.public_c.cidr_block
  ]
  description = "Public subnet CIDR blocks"
}

output "public_subnet_availability_zone" {
  value = [
    aws_subnet.public_a.availability_zone,
    aws_subnet.public_b.availability_zone,
    aws_subnet.public_c.availability_zone
  ]
  description = "Public subnet AZs"
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.igw.id
  description = "Internet Gateway ID"
}

output "routing_table_id" {
  value       = aws_route_table.rt.id
  description = "Route Table ID"
}