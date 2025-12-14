variable "output-vpc-id" {
  description = "VPC ID"
  type = string
}

variable "subnets" {
  description = "List of subnet IDs"
  type = list(string)
}

variable "security_groups" {
  description = "List of security group IDs"
  type = list(string)
}

variable "ec2_instance_id" {
  description = "EC2 instance ID"
  type = string
}
