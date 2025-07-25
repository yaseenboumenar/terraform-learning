
variable "ami_id" {
    description = "AMI to use for the instance"
    type        = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t3.micro"
}

variable "key_name" {
    description = "Existing key pair name"
    type        = string
    default     = null
}

variable "subnet_id" {
    description = "Subnet to launch into (optional if you reply on default VPC behaviour)"
    type        = string
    default     = null
}

variable "vpc_security_group_ids" {
    description = "List of security group IDs to attach"
    type        = list(string)
    default     = []
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "module-ec2"
}

variable "tags" {
    description = "Extra tags to apply"
    type        = map(string)
    default = {}
}