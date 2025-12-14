provider "aws" {
  
}

module "vpc" {
    source = "./vpc"
    range = "10.0.0.0/24"
}

module "subnet" {
  source = "./subnet"
  output_vpc_id = module.vpc.output_vpc_id
  public_subnet_range = "10.0.10.0/28"
    private_subnet_range = "10.0.1.0/28"
    public_subnet_availability = "ap-south-1a"
    private_subnet_availability = "ap-south-1b"

}

module "igw" {
    source = "./igw"
    output_vpc_id = module.vpc.output_vpc_id
  
}

module "nat" {
    source = "./nat"
    public_subnet_id = module.subnet.public_subnet_id
  
}

module "route" {
    source = "./route"
    output_vpc_id = module.vpc.output_vpc_id
    igw_id = module.igw.igw_id
    public_subnet_id = module.subnet.public_subnet_id
    private_subnet_id = module.subnet.private_subnet_id
    nat_gatway_id = module.nat.nat_gatway_id
  
}

module "ec2" {
    source = "./ec2"
    private_subnet_id = module.subnet.private_subnet_id
}

module "alb" {
    source = "./load_balancer"
    output_vpc_id = module.vpc.output_vpc_id
    subnets = [module.subnet.public_subnet_id,module.subnet.private_subnet_id]
    security_groups = []
    ec2_instance_id = module.ec2.instanced_id
}