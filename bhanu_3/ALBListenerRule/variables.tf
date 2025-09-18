variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile to use from CLI credentials"
  type        = string
  default     = "default"
}

variable "listener_arn" {
  description = "ARN of the ALB Listener"
  type        = string
}

variable "target_group_arn" {
  description = "ARN of the Target Group"
  type        = string
}

variable "priority" {
  description = "Priority of the listener rule"
  type        = number
  default     = 100
}

variable "path_pattern" {
  description = "Path pattern for routing"
  type        = string
  default     = "/app1/*"
}
