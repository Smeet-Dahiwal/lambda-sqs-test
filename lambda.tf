resource "aws_lambda_function" "lambda_function" {
  function_name = "myLambdaFunction"
  role          = aws_iam_role.lambda_exec.arn
  handler       = "index.handler"
  runtime       = "python3.9"
  filename      = "dummy.zip" # placeholder
  source_code_hash = filebase64sha256("dummy.zip")
  publish       = true

  lifecycle {
    ignore_changes = [
      filename,
      source_code_hash
    ]
  }
}