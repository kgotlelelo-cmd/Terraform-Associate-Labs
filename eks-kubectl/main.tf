provider "aws" {
    region     = "${var.region}"    
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "aws_eks_cluster" "cluster" {
  name     = "whiz"
  role_arn = "arn:aws:iam::044625059057:role/task98_role_80425.56819031"

  vpc_config {
    subnet_ids = ["subnet-146f7459", "subnet-31085c6e"]
  }
}