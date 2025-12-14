variable "output-vpc-id" {
  description = "VPC ID"
  type = string
}

variable "igw_id" {
  description = "Internet Gateway ID"
  type = string
}

variable "public_subnet_id" {
  description = "Public Subnet ID"
  type = string
}

variable "private_subnet_id" {
  description = "Private Subnet ID"
  type = string
}

variable "nat_gatway_id" {
  description = "NAT Gateway ID"
  type = string
}

variable "vpc_main" {
  description = "VPC Main ID"
  type = string
  default = ""
}
