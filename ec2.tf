	resource "aws_instance" "terraform-learning" {
		ami                     = var.ami_id
  		instance_type           = var.instance_type
		key_name				= var.key_name

		vpc_security_group_ids = [aws_security_group.allow_ssh.id]

		tags = {
			Name = "Terraform-EC2"
		}
	}