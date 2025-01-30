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

module "ec2_instance"{
    source = "./modules/ec2"
    ami = var.client_ami
    instance=var.client_server
}


output "instance_public_IP" {
  value       = module.ec2_instance.instance_public_IP
}
