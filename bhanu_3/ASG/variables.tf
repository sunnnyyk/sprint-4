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
  default     = "my-asg"
}

variable "vpc_zone_identifiers" {
  description = "List of Subnet IDs for the ASG"
  type        = list(string)
}

variable "desired_capacity" {
  description = "Desired number of instances"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of instances"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of instances"
  type        = number
  default     = 3
}

variable "launch_template_id" {
  description = "ID of the Launch Template"
  type        = string
}

variable "launch_template_version" {
  description = "Launch Template version"
  type        = string
  default     = "$Latest"
}

variable "target_group_arns" {
  description = "List of Target Group ARNs for the ASG"
  type        = list(string)
  default     = []
}
