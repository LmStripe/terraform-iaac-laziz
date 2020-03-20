resource "aws_vpc" "dev" {
  cidr_block = "${var.cidr_block}"
}

