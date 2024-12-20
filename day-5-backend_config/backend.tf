#This backend congiguration instructs Terraform to store its state in an s3 bucket
terraform {
  backend "s3" {
    bucket = "nareshmulticloud"
    region = "us-west-2a"
    key = "terraform.tfstate"
  }
}