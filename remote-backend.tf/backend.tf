terraform {
  backend "s3" {
    bucket = "affu-s3-demo-using-terraform"
    key    = "afridi/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}