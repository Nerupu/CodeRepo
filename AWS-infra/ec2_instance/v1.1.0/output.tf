output "instance_output" {
  description = "instance output values"
  value = { for k, v in aws_instance.instance : k => {
    id          = v.id
    arn         = v.arn
    private_dns = v.private_dns
    }
  }
}