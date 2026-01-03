provider "aws" {
  region = "us-east-1"
}

# creation of instance
resource "aws_instance" "creation_of_instance" {
  instance_type = "t3.micro"
  ami = "ami-068c0051b15cdb816"
}

# creation of s3
resource "aws_s3_bucket" "creation_of_s3" {
  bucket = "affu-s3-demo-using-terraform"
}

# using locking mechanism

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}