#modules/ec2/main.tf
resource "aws_instance" "example" {
  ami           = var.client_ami
  instance_type = var.client_server

  tags = {
    Name = "Itamar_instance"
  }
}
