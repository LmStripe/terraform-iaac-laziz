output "VPC_ID" {
  value       = "${aws_vpc.dev.id}"
}
output "Subnet1" {
  value       = "${aws_subnet.dev1.id}"
}
output "Subnet2" {
  value       = "${aws_subnet.dev2.id}"
}
output "Subnet3" {
  value       = "${aws_subnet.dev3.id}"
}
output "Private Subnet1" {
  value       = "${aws_subnet.dev1.id}"
}
output "Private Subnet2" {
  value       = "${aws_subnet.dev2.id}"
}
output "Private Subnet3" {
  value       = "${aws_subnet.dev3.id}"
}
output "IGW" {
  value       = "${aws_internet_gateway.dev.id}"
}