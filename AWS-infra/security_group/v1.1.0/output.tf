output "security_group_output" {
  description = "security group output values"
  value = { for k, v in aws_security_group.security_group : k => {
    id  = v.id
    arn = v.arn
    }
  }
}