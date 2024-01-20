# --------------------------------
# Terraform configuration
# --------------------------------
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=0.13"
    }
  }
  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-msengnsoni"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform-user"
  }
}

# --------------------------------
# Provider
# --------------------------------
provider "aws" {
  profile = "terraform-user"
  region  = "ap-northeast-1"
}

# --------------------------------
# Variables
# --------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}