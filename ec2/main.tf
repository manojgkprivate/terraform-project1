resource "aws_instance" "web_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.private_subnet_id
  associate_public_ip_address = false

  user_data = <<-EOT
    #!/bin/bash
    sudo apt update -y
    sudo apt install -y apache2
    sudo systemctl start apache2
    sudo systemctl enable apache2
    echo "<h1> Hello this is the working page thank you</h1>" > /var/www/html/index.html
  EOT

  tags = {
    Name = "Private-EC2-Instance"
  }
}
