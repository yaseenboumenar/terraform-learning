terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.4.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-statefile-yb"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}

module "ec2_terraform_learning" {
  source              = "./modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]
  instance_name       = "terraform-learning"
  tags = {
    Owner = "Yaseen"
    Env   = terraform.workspace
  }
}
