resource "aws_subnet" "public_subnet" {
  vpc_id     = var.output_vpc_id
  cidr_block = var.public_subnet_range
  availability_zone = var.public_subnet_availability
  map_customer_owned_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = var.output_vpc_id
  cidr_block = var.private_subnet_range
  availability_zone = var.private_subnet_availability


  tags = {
    Name = "private-subnet"
  }
}

