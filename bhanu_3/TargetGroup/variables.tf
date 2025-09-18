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

variable "vpc_id" {
  description = "VPC ID where the Target Group will be created"
  type        = string
}

variable "target_group_name" {
  description = "Name of the Target Group"
  type        = string
  default     = "my-target-group"
}

variable "port" {
  description = "Port on which targets receive traffic"
  type        = number
  default     = 80
}

variable "protocol" {
  description = "Protocol for routing traffic"
  type        = string
  default     = "HTTP"
}

variable "health_check_path" {
  description = "Path for health check"
  type        = string
  default     = "/"
}
