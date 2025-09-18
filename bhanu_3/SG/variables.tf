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
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "terraform-sg"
}

variable "sg_description" {
  description = "Description of the security group"
  type        = string
  default     = "Security group managed by Terraform"
}
