output "vpc_output" {
  description = "vpc output values"
  value = { for k, v in aws_vpc.vpc : k => {
    id  = v.id
    arn = v.arn
    }
  }
}