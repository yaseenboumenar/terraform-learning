	resource "aws_instance" "terraform-learning" {
		ami                     = var.ami_id
  		instance_type           = var.instance_type
		key_name				= var.key_name

		vpc_security_group_ids = [aws_security_group.allow_ssh.id]

		tags = {
			Name = "Terraform-EC2"
		}
	}

    resource "aws_instance" "terraform_imported" {
  ami                    = "ami-042b4708b1d05f512"
  instance_type          = "t3.micro"
  key_name               = var.key_name

  tags = {
    Name = "terraform-learning"
  }
}