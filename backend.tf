terraform {
  backend "s3" {
    bucket = "terraform-class-laziz"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}