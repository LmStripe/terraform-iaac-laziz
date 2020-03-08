
output "IP" {
  value       =     "${aws_instance.web.public_ip}"
}


output "KEY" {
  value       =     "${aws_instance.web.key_name}"
}

output "Bucketname" {
  value       =     "${aws_s3_bucket.b.bucket}"
}


output "SEC_GROUP" {
  value       =     "${aws_security_group.allow_tls.name}"
}

output "AMI" {
  value       =     "${aws_instance.web.ami}"
}


output "ROUTE53" {
  value       =     "${aws_route53_record.wordpress.name}"
}

