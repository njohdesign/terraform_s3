provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "njohdesign-terraform-s3-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "Terraform S3 Lab"
    Environment = "Lab"
  }
}
