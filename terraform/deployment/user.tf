resource "aws_iam_user" "lb" {
  name = "elliotalexander.uk"

  tags = {
    created-by = "terraform"
  }
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.lb.name
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "elliotalexander.uk-policy"
  user = aws_iam_user.lb.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.bucket.arn}"
    }
  ]
}
EOF
}

resource "aws_iam_access_key" "access_key" {
  user    = aws_iam_user.lb.name
}

output "secret" {
  value = aws_iam_access_key.access_key.secret
  sensitive = true
}

output "id" {
  value = aws_iam_access_key.access_key.id
}
