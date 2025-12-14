resource "aws_internet_gateway" "gw" {
  vpc_id = var.output_vpc_id

  tags = {
    Name = "my_IGW"
  }
}

