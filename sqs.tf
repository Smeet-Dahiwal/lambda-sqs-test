resource "aws_sqs_queue" "lambda_trigger_queue" {
  name = "my-lambda-trigger-queue"
}