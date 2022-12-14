terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.27"
    }
  }
  backend "s3" {
      bucket = "gatn-tf-states"
      key    = "github-actions-telegram-notification-state"
      region = "eu-west-3"
    }
  required_version = ">= 1.2.7"
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Name       = var.project_name
      Deployment = "terraform"
    }
  }
}
