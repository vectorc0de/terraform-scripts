output "queue_url" {
  value = aws_sqs_queue.containerdevs_queue.id
}

output "queue_arn" {
  value = aws_sqs_queue.containerdevs_queue.arn
}
