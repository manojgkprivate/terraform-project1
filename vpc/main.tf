resource "aws_vpc" "vpc_main" {
  cidr_block = var.range
  enable_dns_support = true
  enable_dns_hostnames =true 

  tags={
	Name = "MY-vpc1"
}
}