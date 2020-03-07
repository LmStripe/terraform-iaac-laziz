resource "aws_route53_record" "wordpress" {
  zone_id = "Z2V0A19KQJ3FIA"
  name    = "wordpress.lazizm.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}