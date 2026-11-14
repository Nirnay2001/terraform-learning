

resource "aws_iam_user" "admin_user" {
  name = "Alen"
  tags = {
    Description = "Team lead"
  }
  
}

resource "aws_iam_policy" "adminuser" {
  name = "AdminUsers"
  policy = file("admin_policy.json")
}

resource "aws_iam_user_policy_attachment" "Alen-admin-acces" {
  user = aws_iam_user.admin_user.name
  policy_arn = aws_iam_policy.adminuser.arn
}