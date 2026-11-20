resource "aws_iam_user" "admin_user" {
  name = var.users[count.index]
  count = length(var.users)
  tags = {
    Description = "Team lead"
  }
  
}
resource "aws_iam_policy" "adminuser" {
  name   = "admin-policy"
  policy = file("admin_policy.json")
}

resource "aws_iam_user_policy_attachment" "admin-access" {
  count      = length(var.users)
  user       = aws_iam_user.admin_user[count.index].name
  policy_arn = aws_iam_policy.adminuser.arn
}

resource "aws_iam_group" "admin_group" {
  name = "admin-group"
}