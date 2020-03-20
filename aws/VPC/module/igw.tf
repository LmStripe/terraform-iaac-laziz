resource "aws_internet_gateway" "dev" {
  vpc_id = "${aws_vpc.dev.id}"
}