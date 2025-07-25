output "ec2_instance_id" {
  value = module.ec2_terraform_learning.instance_id
}

output "ec2_public_ip" {
  value = module.ec2_terraform_learning.public_ip
}

output "ec2_private_ip" {
  value = module.ec2_terraform_learning.private_ip
}

output "ec2_ami" {
  value = module.ec2_terraform_learning.ami
}

output "ec2_key_name" {
  value = module.ec2_terraform_learning.key_name
}
