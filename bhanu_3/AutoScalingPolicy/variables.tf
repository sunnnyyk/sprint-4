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

variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}

variable "scale_out_adjustment" {
  description = "Number of instances to add when scaling out"
  type        = number
  default     = 1
}

variable "scale_in_adjustment" {
  description = "Number of instances to remove when scaling in"
  type        = number
  default     = -1
}

variable "scale_out_cpu_threshold" {
  description = "CPU Utilization threshold to trigger scale out"
  type        = number
  default     = 70
}

variable "scale_in_cpu_threshold" {
  description = "CPU Utilization threshold to trigger scale in"
  type        = number
  default     = 30
}
