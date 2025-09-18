# Scale Out Policy
resource "aws_autoscaling_policy" "scale_out" {
  name                   = "${var.asg_name}-scale-out"
  autoscaling_group_name = var.asg_name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = var.scale_out_adjustment
  cooldown               = 300
  policy_type            = "SimpleScaling"
}

# CloudWatch Alarm for Scale Out
resource "aws_cloudwatch_metric_alarm" "scale_out_alarm" {
  alarm_name          = "${var.asg_name}-cpu-high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 120
  statistic           = "Average"
  threshold           = var.scale_out_cpu_threshold

  dimensions = {
    AutoScalingGroupName = var.asg_name
  }

  alarm_actions = [aws_autoscaling_policy.scale_out.arn]
}

# Scale In Policy
resource "aws_autoscaling_policy" "scale_in" {
  name                   = "${var.asg_name}-scale-in"
  autoscaling_group_name = var.asg_name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = var.scale_in_adjustment
  cooldown               = 300
  policy_type            = "SimpleScaling"
}

# CloudWatch Alarm for Scale In
resource "aws_cloudwatch_metric_alarm" "scale_in_alarm" {
  alarm_name          = "${var.asg_name}-cpu-low"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 120
  statistic           = "Average"
  threshold           = var.scale_in_cpu_threshold

  dimensions = {
    AutoScalingGroupName = var.asg_name
  }

  alarm_actions = [aws_autoscaling_policy.scale_in.arn]
}
