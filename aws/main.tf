

resource "aws_iam_user" "admin_user" {
  name = "Alen"
  tags = {
    Description = "Team lead"
  }
  
}

resource "aws_iam_policy" "adminuser" {
  name = "AdminUsers"
  policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "*"
            }
        ]
    }
  EOF
}

resource "aws_iam_user_policy_attachment" "lucy-admin-acces" {
  user = aws_iam_user.admin_user.name
  policy_arn = aws_iam_policy.adminuser.arn
}