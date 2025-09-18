resource "aws_lb_target_group" "tg" {
  name     = var.target_group_name
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id

  health_check {
    path                = var.health_check_path
    protocol            = var.protocol
    matcher             = "200"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }

  tags = {
    Name = var.target_group_name
  }
}
