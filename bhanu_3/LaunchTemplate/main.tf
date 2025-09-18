resource "aws_launch_template" "lt" {
  name_prefix   = var.launch_template_name
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = var.security_group_ids

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.launch_template_name}-instance"
    }
  }
}
