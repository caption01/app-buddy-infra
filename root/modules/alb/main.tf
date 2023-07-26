resource "aws_lb" "alb" {
  name               = "jenkins-alb"
  internal           = false # Set to true if you want an internal ALB
  load_balancer_type = "application"
  subnets            = [var.subnet_public_id, var.subnet_private_id]
  security_groups    = [var.aws_security_group_id]

  tags = {
    App = "jenkins"
  }
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_group.arn
  }

  tags = {
    App = "jenkins"
  }
}

resource "aws_lb_target_group" "target_group" {
  name        = "jenkins-target-group"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "instance"

  health_check {
    healthy_threshold   = 3   # Number of consecutive successful health checks required to be considered healthy
    unhealthy_threshold = 2   # Number of consecutive failed health checks required to be considered unhealthy
    timeout             = 5   # Amount of time, in seconds, during which no response means a failed health check
    interval            = 30  # Interval between health checks, in seconds
    path                = "/" # Replace with the actual path to your health check endpoint
    port                = 8080
    matcher             = "200-399" # Optional. HTTP codes indicating success. Default is "200-299".
  }

  tags = {
    App = "jenkins"
  }
}

resource "aws_lb_target_group_attachment" "group" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = var.ec2_instance_id
  port             = 8080

  depends_on = [aws_lb_target_group.target_group]
}



