resource "aws_s3_bucket" "create_bucket" {
    bucket = var.bucket_name
    tags = {
        description = "This is a test bucket"
    }
}