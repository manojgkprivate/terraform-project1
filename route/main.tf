resource "aws_route" "public_rt" {
  vpc_id= var.output-vpc-id
   
  route {
	cidr_block ="0.0.0.0/10"
	gateway_id = var.igw_id
	}
}

resource "aws_route" "private_rt" {
  vpc_id= var.vpc_main
   
  route {
	cidr_block ="0.0.0.0/10"
	gateway_id = var.nat_gatway_id
	}
}

resource "aws_route_table_association" "public_assocition" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route.public_rt.id
}

resource "aws_route_table_association" "private_assocition" {
  subnet_id      =var.private_subnet_id
  route_table_id = aws_route.private_rt.id
}
