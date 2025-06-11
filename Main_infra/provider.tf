provider "aws" {
  region = "ap-south-1"
  assume_role {
    role_arn = "arn:aws:iam::${var.accounts}:role/codepipeline-Terraform-Role"
  }
}
