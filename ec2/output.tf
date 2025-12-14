output "instanced_id" {
value = aws_instance.web_server.id
}

output "public_ec_ip" {
value = aws_instance.web_server.public_ip
}