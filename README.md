# Terraform AWS EC2 (with module + remote state)

## What this does

- Stores state in S3 (and optionally locks with DynamoDB)
- Provisions an EC2 instance through a local module
- Allocates an Elastic IP to keep a stable public IP

## Usage

```bash
terraform init
terraform workspace new dev
terraform plan
terraform apply
