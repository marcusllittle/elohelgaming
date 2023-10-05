output "instance_id" {
  description = "The ID of the deployed EC2 instance"
  value       = aws_instance.gaming_instance.id
}

output "instance_public_ip" {
  description = "The public IP address of the deployed EC2 instance"
  value       = aws_instance.gaming_instance.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the deployed EC2 instance"
  value       = aws_instance.gaming_instance.private_ip
}

output "instance_public_dns" {
  description = "The public DNS name of the deployed EC2 instance"
  value       = aws_instance.gaming_instance.public_dns
}

output "instance_private_dns" {
  description = "The private DNS name of the deployed EC2 instance"
  value       = aws_instance.gaming_instance.private_dns
}

output "instance_state" {
  description = "The current state of the deployed EC2 instance"
  value       = aws_instance.gaming_instance.instance_state
}

output "instance_availability_zone" {
  description = "The availability zone in which the EC2 instance is deployed"
  value       = aws_instance.gaming_instance.availability_zone
}

output "instance_key_name" {
  description = "The key pair name used by the deployed EC2 instance"
  value       = aws_instance.gaming_instance.key_name
}

output "instance_security_groups" {
  description = "The security groups associated with the deployed EC2 instance"
  value       = aws_instance.gaming_instance.vpc_security_group_ids
}

output "instance_subnet_id" {
  description = "The ID of the subnet in which the EC2 instance is deployed"
  value       = aws_instance.gaming_instance.subnet_id
}

output "instance_tags" {
  description = "The tags assigned to the deployed EC2 instance"
  value       = aws_instance.gaming_instance.tags
}
