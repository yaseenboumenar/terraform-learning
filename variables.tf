
variable "region" {
    description = "AWS region to deploy resources"
    type        = string
    default     = "eu-north-1"
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t3.micro"
}

variable "ami_id" {
    description = "AMI ID for EC2"
    type        = string
    default     = "ami-042b4708b1d05f512"
}

variable "key_name" {
    description = "Key pair name for SSH access"
    type        = string
    default     = "terraform-learning"
}

variable "security_group_ids" {
  description = "List of security group IDs for the EC2 instance"
  type        = list(string)
  default     = []
}

locals {
  instance_ami  = "ami-042b4708b1d05f512"
  instance_type = "t3.micro"
}