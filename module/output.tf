
output "IP" {
  value       =     "${aws_instance.web.public_ip}"
}


output "KEY" {
  value       =     "${aws_instance.web.key_name}"
}


