terraform {
  backend "s3" {
    bucket = "Terraform-slate-Backend"
    key = "Dynamo/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}