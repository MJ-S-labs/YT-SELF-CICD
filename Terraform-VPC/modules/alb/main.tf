# ALB
resource "aws_lb" "alb" {
  name               = "application-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = var.subnets

}

# ALB Listener

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.front_end.arn
  port              = ""
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tgrn
  }
}

# Target Group

resource "aws_lb_target_group" "tg" {
  name     = "alb_tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}


# Target Group Attachments

resource "aws_lb_target_group_attachment" "tg" {
  count            = length(var.instances)
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = var.instances[count.index]
  port             = 80
}