resource "aws_sqs_queue" "containerdevs_queue" {
  name = var.queue_name
}
