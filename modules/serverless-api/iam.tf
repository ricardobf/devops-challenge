resource "aws_iam_role" "lambda_role" {
   name = "lambda-role-${var.env}-${var.region}"

   assume_role_policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
    {
    "Effect": "Allow",
    "Principal": {
        "Service": "lambda.amazonaws.com"
    },
    "Action": "sts:AssumeRole"
    }
]
}
    EOF
}