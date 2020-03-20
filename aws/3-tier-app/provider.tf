provider "aws" {
    region = "us-east-1"
}
 terraform {
   required_version = "~> 0.11.14"
   provider.aws    = "~> 2.53"
   provider.null   = "~> 2.1"
   provider.random = "~> 2.2"
 }