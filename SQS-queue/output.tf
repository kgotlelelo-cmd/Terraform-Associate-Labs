output "sqs-fifo-queue-arn" {
  value = aws_sqs_queue.fifo-queue.arn
}

output "sqs-standard-queue-arn" {
  value = aws_sqs_queue.standard-queue.arn
}