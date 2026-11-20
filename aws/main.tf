resource "aws_iam_user" "admin_user" {
  name = var.users[count.index]
  count = length(var.users)
  tags = {
    Description = "Team lead"
  }
  
}
resource "aws_iam_policy" "adminuser" {
  name = "AdminUsers"
  policy = file("admin_policy.json")
}

resource "aws_iam_user_policy_attachment" "admin-access" {
  user = aws_iam_user.admin_user.name
  policy_arn = aws_iam_policy.adminuser.arn
}