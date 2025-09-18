output "listener_rule_id" {
  description = "ID of the ALB Listener Rule"
  value       = aws_lb_listener_rule.rule.id
}

output "listener_rule_arn" {
  description = "ARN of the ALB Listener Rule"
  value       = aws_lb_listener_rule.rule.arn
}
