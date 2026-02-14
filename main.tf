provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "tkhan10-imc-terraform-${random_id.suffix.hex}"
}

resource "random_id" "suffix" {
  byte_length = 4
}
