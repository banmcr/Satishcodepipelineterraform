provider "aws" {
  region = "ap-south-1"
  assume_role {
    role_arn = "arn:aws:iam::682033488423:role/codepipeline-Terraform-Role"
  }
}

data "aws_region" "current" {}

output "regionname" {
  value = data.aws_region.current.id
}