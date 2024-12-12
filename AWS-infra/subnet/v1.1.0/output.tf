output "subnet_output" {
  description = "subnet output values"
  value = { for k, v in aws_subnet.subnet : k => {
    id  = v.id
    arn = v.arn
    }
  }
}