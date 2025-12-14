resource "aws_internet_gateway" "gw" {
  vpc_id = var.output-vpc-id

  tags = {
    Name = "my_IGW"
  }
}

