# use terraform cloud
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "cloudzap"

    workspaces {
      name = "yt-terraform-intro-prod"
    }
  }
}

provider "aws" {
  region = var.AWS_REGION
}
