provider "aws" {
  region = "ap-south-1"
  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/codepipeline-Terraform-Role"
  }
}

terraform {
  backend "s3" {
    bucket         = "${var.account_id}"
    key            = "statefolder/${var.account_id}/aws_infra.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "${var.account_id}"
    encrypt        = true
  }
}