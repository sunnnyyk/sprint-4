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

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
  default     = "ami-08c40ec9ead489470" # Example Amazon Linux 2 AMI (us-east-1)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair to use for SSH access"
  type        = string
}

variable "security_group_ids" {
  description = "List of Security Group IDs for the instances"
  type        = list(string)
}

variable "launch_template_name" {
  description = "Name of the launch template"
  type        = string
  default     = "my-launch-template"
}
