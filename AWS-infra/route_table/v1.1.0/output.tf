output "route_table_output" {
  description = "route table output values"
  value = { for k, v in aws_route_table.route_table : k => {
    id  = v.id
    arn = v.arn
    }
  }
}