provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "njohdesign-terraform-s3-lab-20260914-01"

  tags = {
    Name        = "Terraform S3 Lab"
    Environment = "Lab"
  }
}