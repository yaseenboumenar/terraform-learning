output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = try(aws_eip.this.public_ip, "No Elastic IP assigned")
}

output "private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.this.private_ip
}

output "ami" {
  description = "AMI ID used for the EC2 instance"
  value       = aws_instance.this.ami
}

output "key_name" {
  description = "Key pair name used for the EC2 instance"
  value       = aws_instance.this.key_name
}
