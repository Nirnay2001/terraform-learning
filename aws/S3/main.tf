resource "aws_s3_bucket" "create_bucket" {
    bucket = var.bucket_name
    tags = {
        description = "This is a test bucket"
    }
}

resource "aws_s3_object" "upload_file" {
    content = file("test.txt")
    key = "test.txt"
    bucket = aws_s3_bucket.create_bucket.id
}

data "aws_iam_group" "admin_group" {
  group_name = var.user-group
}

resource "aws_iam_policy" "group_s3_policy" {
  name = "admin-group-s3-policy"

  policy = templatefile("bucket_policy.json", {
    bucket_name = var.bucket_name
  })
}

resource "aws_iam_group_policy_attachment" "group_attachment" {
  group      = "admin-group"
  policy_arn = aws_iam_policy.group_s3_policy.arn
}