provider "aws" {
  region = "us-east-1"
}

resource "aws_lambda_event_source_mapping" "sqs_to_lambda" {
  event_source_arn = aws_sqs_queue.lambda_trigger_queue.arn
  function_name    = aws_lambda_function.lambda_function.arn
  batch_size       = 10
  enabled          = true
}
