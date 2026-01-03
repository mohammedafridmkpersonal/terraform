provider "aws" {
  region = "ap-south-1"
}
module "new" {
  source = "./modules"
  ami_value = "ami-068c0051b15cdb816"
  instance_type_value = "t3.micro"
}
