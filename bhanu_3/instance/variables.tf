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

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-08c40ec9ead489470" # Amazon Linux 2 (example for us-east-1)
}

variable "key_name" {
  description = "Name of the key pair to use for SSH access"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
  default     = "MyTerraformEC2"
}
