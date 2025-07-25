terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "6.4.0"
			}
		}
	
	backend "s3" {
	  bucket = "terraform-statefile-yb"
	  key 	 = "terraform.tfstate"
	  region = "eu-north-1"
		}
	}

	provider "aws" {
		region = var.region
	}
