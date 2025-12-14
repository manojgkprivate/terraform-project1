variable "ami_id" {
  default = "ami-00ca570c1b6d79f36"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "private_subnet_id" {
  description = "Private subnet ID from subnet module"
  type = string
}