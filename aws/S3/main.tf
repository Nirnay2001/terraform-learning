resource "aws_s3_bucket" "create_bucket" {
    bucket = var.bucket_name
    tags = {
        description = "This is a test bucket"
    }
}

resource "aws_s3_bucket_object" "upload_file" {
    content = file("test.txt")
    key = "test.txt"
    bucket = aws_s3_bucket.create_bucket.id
}

data "aws_iam_group" "admin_group" {
  group_name = "admin-group"
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.create_bucket.id
  policy = file("bucket_policy.json")
}