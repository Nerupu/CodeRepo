output "route_table_association_output" {
  description = "route table association output values"
  value = { for k, v in aws_route_table_association.route_table_association : k => {
    id = v.id
    }
  }
}