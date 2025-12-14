resource "aws_route_table" "public_rt" {
  vpc_id = var.output_vpc_id
   
  route {
	cidr_block = "0.0.0.0/10"
	gateway_id = var.igw_id
	}
  
  tags = {
    Name = "public_rt"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = var.output_vpc_id
   
  route {
	cidr_block = "0.0.0.0/10"
	gateway_id = var.nat_gatway_id
	}
  
  tags = {
    Name = "private_rt"
  }
}

resource "aws_route_table_association" "public_assocition" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_assocition" {
  subnet_id      = var.private_subnet_id
  route_table_id = aws_route_table.private_rt.id
}
