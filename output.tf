output "myLambdaFunction" {
  value = aws_lambda_function.lambda_function.function_name
}

output "sqs_queue_url" {
  value = aws_sqs_queue.lambda_trigger_queue.id
}
