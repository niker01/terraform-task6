resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name    = "cmtr-${var.project_id}-01-vpc"
    Project = var.project_id
  }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.10.1.0/24"
  availability_zone = "eu-west-1a"

  map_public_ip_on_launch = true

  tags = {
    Name    = "cmtr-${var.project_id}-01-subnet-public-a"
    Project = var.project_id
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.10.3.0/24"
  availability_zone = "eu-west-1b"

  map_public_ip_on_launch = true

  tags = {
    Name    = "cmtr-${var.project_id}-01-subnet-public-b"
    Project = var.project_id
  }
}

resource "aws_subnet" "public_c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.10.5.0/24"
  availability_zone = "eu-west-1c"

  map_public_ip_on_launch = true

  tags = {
    Name    = "cmtr-${var.project_id}-01-subnet-public-c"
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

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_a.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public_b.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.public_c.id
  route_table_id = aws_route_table.rt.id
}