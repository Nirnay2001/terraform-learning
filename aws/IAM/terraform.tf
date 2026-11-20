terraform {
  backend "s3" {
    bucket = "terraform-slate-backend"
    key = "IAM/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}