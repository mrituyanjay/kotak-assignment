resource "aws_iam_policy" "admin-policy" {
  name        = "admin-access"
  description = "Provides permission to access All resources in AWS"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "*",
        ]
        Effect = "Allow"
        Resource = [
          "*"
        ]
      },
    ]
  })
}

resource "aws_iam_role" "bastion-role" {
  name = "bastion_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "RoleForEC2"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_policy_attachment" "bastion-attach" {
  name       = "bastion-attachment"
  roles      = [aws_iam_role.bastion-role.name]
  policy_arn = aws_iam_policy.admin-policy.arn
}

resource "aws_iam_instance_profile" "bastion-profile" {
  name = "bastion_profile"
  role = aws_iam_role.bastion-role.name
}
