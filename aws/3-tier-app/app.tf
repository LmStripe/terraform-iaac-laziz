#Creates ASG with LC
module "wordpress" {
  source = "terraform-aws-modules/autoscaling/aws"

  # Launch configuration
  lc_name = "wordpress-lc"
  version = "~> 2.0"
  name = "wordpress"
  image_id        = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.allow_tls.id}"]
  # Auto scaling group
  asg_name                  = "wordpress-asg"
  vpc_zone_identifier       = [
                                "${data.terraform_remote_state.dev.Subnet1}", 
                                "${data.terraform_remote_state.dev.Subnet2}", 
                                "${data.terraform_remote_state.dev.Subnet3}"
                                ]
  health_check_type         = "EC2"
  min_size                  = 3
  max_size                  = 48
  desired_capacity          = 3
  wait_for_capacity_timeout = 0

  tags = [
    {
      key                 = "Environment"
      value               = "dev"
      propagate_at_launch = true
    },
    {
      key                 = "Project"
      value               = "megasecret"
      propagate_at_launch = true
    },
  ]
}