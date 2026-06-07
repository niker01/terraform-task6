resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name    = "cmtr-${var.project_id}-01-vpc"
    Project = var.project_id
  }
}

resource "aws_subnet" "public" {
  for_each = { for s in var.public_subnets : s.name => s }

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  map_public_ip_on_launch = true

  tags = {
    Name    = each.value.name
    Project = var.project_id
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name    = "cmtr-${var.project_id}-01-igw"
    Project = var.project_id
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name    = "cmtr-${var.project_id}-01-rt"
    Project = var.project_id
  }
}

resource "aws_route_table_association" "public" {
  for_each = aws_subnet.public

  subnet_id      = each.value.id
  route_table_id = aws_route_table.rt.id
}