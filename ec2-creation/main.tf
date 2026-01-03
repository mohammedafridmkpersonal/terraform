provider "aws" {
  region = "us-east-1" #set ur region
}

resource "aws_instance" "first_terraform_instance" {
   ami = "ami-068c0051b15cdb816"
   instance_type = "t3.micro"
   subnet_id = "subnet-090bc450e308b6a73"
}