output "launch_template_id" {
  description = "ID of the Launch Template"
  value       = aws_launch_template.lt.id
}

output "launch_template_latest_version" {
  description = "Latest version of the Launch Template"
  value       = aws_launch_template.lt.latest_version
}
