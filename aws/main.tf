

resource "aws_iam_user" "admin_user" {
  name = "Jack"
  tags = {
    Description = "Team lead"
  }
}