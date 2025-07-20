resource "aws_lambda_function" "lambda_function" {
  function_name = "myLambdaFunction"
  role          = aws_iam_role.lambda_exec.arn
  handler       = "index.handler"
  runtime       = "python3.9"

  s3_bucket     = "testsmeet"
  s3_key        = "lambda-function/function.zip"

  publish       = true

  lifecycle {
    ignore_changes = [
      s3_key
    ]
  }
}
