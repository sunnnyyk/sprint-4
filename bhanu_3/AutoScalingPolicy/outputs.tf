output "scale_out_policy_arn" {
  description = "ARN of the Scale Out Policy"
  value       = aws_autoscaling_policy.scale_out.arn
}

output "scale_in_policy_arn" {
  description = "ARN of the Scale In Policy"
  value       = aws_autoscaling_policy.scale_in.arn
}

output "scale_out_alarm_name" {
  description = "Name of the CloudWatch Scale Out Alarm"
  value       = aws_cloudwatch_metric_alarm.scale_out_alarm.alarm_name
}

output "scale_in_alarm_name" {
  description = "Name of the CloudWatch Scale In Alarm"
  value       = aws_cloudwatch_metric_alarm.scale_in_alarm.alarm_name
}
