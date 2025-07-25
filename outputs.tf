
output "instance_public_ip" {
    description = "Public IP of the instance"
    value       = aws_instance.terraform-learning.public_ip
}

output "instance_private_ip" {
    description = "Private IP of the instance"
    value       = aws_instance.terraform-learning.private_ip
}

output "instance_ami" {
    description = "The AMI ID used for your EC2 instance"
    value       = aws_instance.terraform-learning.ami
}

output "instance_id" {
    description = "The EC2 instance ID"
    value       = aws_instance.terraform-learning.id
}

output "key_name" {
    description = "The key pair name used for SSH"
    value       = aws_instance.terraform-learning.key_name
}