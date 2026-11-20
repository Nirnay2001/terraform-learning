resource "aws_s3_bucket" "create_bucket" {
    bucket = "terraform-slate-backend"
    tags = {
        description = "This is a backup bucket"
    }
}