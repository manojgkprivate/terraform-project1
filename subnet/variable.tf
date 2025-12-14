variable "output_vpc_id" {
	description = "VPC ID from VPC module"
	type = string
}

variable "public_subnet_range" {
	description = "public subnet cidr range for VPC"
	default = "10.0.10.0/28"
}

variable "private_subnet_range" {
	description = "private subnet cidr range for VPC"
	default = "10.0.1.0/28"
}

variable "public_subnet_availability" {
	description = "Available zone for subnet"
	default = "ap-south-1a"
}


variable "private_subnet_availability" {
	description = "Available zone for subnet"
	default = "ap-south-1b"
}
