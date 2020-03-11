#Public Subnets

resource "aws_subnet" "dev1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block1_public}"
}
resource "aws_subnet" "dev2" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block2_public}" 
}
resource "aws_subnet" "dev3" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block3_public}" 
}

#Private Subnets

resource "aws_subnet" "dev_private1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block1_private}"
}
resource "aws_subnet" "dev_private2" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block2_private}" 
}
resource "aws_subnet" "dev_private3" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block3_private}" 
}