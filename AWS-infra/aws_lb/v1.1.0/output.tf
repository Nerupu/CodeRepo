output "lb_output" {
  description = "lb output values"
  value = { for k, v in aws_lb.lb : k => {
    id  = v.id
    arn = v.arn
    }
  }
}