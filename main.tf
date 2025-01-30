terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.client_ami
  instance_type = var.client_server

  tags = {
    Name = "Itamar_instance"
  }
}

output "instance_public_IP" {
  description = "Instance public IP"
  value       = aws_instance.example.public_ip
}
