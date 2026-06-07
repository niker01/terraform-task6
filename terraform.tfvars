project_id = "cmtr-xpj56jfp"

vpc_cidr = "10.10.0.0/16"

public_subnets = [
  {
    name              = "cmtr-xpj56jfp-01-subnet-public-a"
    cidr_block        = "10.10.1.0/24"
    availability_zone = "eu-west-1a"
  },
  {
    name              = "cmtr-xpj56jfp-01-subnet-public-b"
    cidr_block        = "10.10.3.0/24"
    availability_zone = "eu-west-1b"
  },
  {
    name              = "cmtr-xpj56jfp-01-subnet-public-c"
    cidr_block        = "10.10.5.0/24"
    availability_zone = "eu-west-1c"
  }
]