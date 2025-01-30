provider "aws"{
    region = "us-east-1"
    version="~> 3.0"
}
resource "aws_instance" "example"{
    ami = var.client_ami
    instance_type = var.client_server

    tags= {
        Name = "Itamar_instance"
    }
}