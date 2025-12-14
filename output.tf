output "alb_dns" {
    value= module.alb.load_balancer_dna
}

output "ec2_instance_id" {
    value =  module.ec2.public_ec_ip
  
}