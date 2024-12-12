output "nat_gateway_output" {
  description = "nat gateway output values"
  value = { for k, v in aws_nat_gateway.nat_gateway : k => {
    id                   = v.id
    network_interface_id = v.network_interface_id
    }
  }
}