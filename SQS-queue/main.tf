provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_sqs_queue" "fifo-queue" {
  name = "MyWhizQueue.fifo"
  fifo_queue = true
  content_based_deduplication = true
}

resource "aws_sqs_queue" "standard-queue" {
  name = "MyWhizQueue"
}