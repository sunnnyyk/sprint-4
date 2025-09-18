resource "aws_autoscaling_group" "asg" {
  name                      = var.asg_name
  desired_capacity          = var.desired_capacity
  min_size                  = var.min_size
  max_size                  = var.max_size
  vpc_zone_identifiers      = var.vpc_zone_identifiers
  target_group_arns         = var.target_group_arns
  health_check_type         = "EC2"
  force_delete              = true

  launch_template {
    id      = var.launch_template_id
    version = var.launch_template_version
  }

  tag {
    key                 = "Name"
    value               = var.asg_name
    propagate_at_launch = true
  }
}
