#modules/ec2/output.tf
output "instance_public_IP" {
  description = "Instance public IP"
  value       = aws_instance.example.public_ip
}
