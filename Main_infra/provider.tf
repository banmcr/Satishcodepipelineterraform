provider "aws" {
  region = "ap-south-1"
  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/codepipeline-Terraform-Role"
  }
}

terraform {
  backend "s3" {}
}