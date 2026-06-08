aws_region = "eu-west-1"

vpc_name = "cmtr-xpj56jfp-01-vpc"
vpc_cidr = "10.10.0.0/16"

igw_name         = "cmtr-xpj56jfp-01-igw"
route_table_name = "cmtr-xpj56jfp-01-rt"

public_subnets = {
  subnet_a = {
    cidr_block = "10.10.1.0/24"
    az         = "eu-west-1a"
    name       = "cmtr-xpj56jfp-01-subnet-public-a"
  }

  subnet_b = {
    cidr_block = "10.10.3.0/24"
    az         = "eu-west-1b"
    name       = "cmtr-xpj56jfp-01-subnet-public-b"
  }

  subnet_c = {
    cidr_block = "10.10.5.0/24"
    az         = "eu-west-1c"
    name       = "cmtr-xpj56jfp-01-subnet-public-c"
  }
}