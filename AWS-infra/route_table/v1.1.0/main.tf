data "aws_vpc" "vpc_id" {
  for_each = var.route_table_variables
  tags     = each.value.route_table_vpc_tags
}

resource "aws_route_table" "route_table" {
  for_each         = var.route_table_variables
  tags             = each.value.route_table_tags
  vpc_id           = data.aws_vpc.vpc_id[each.key].id
  propagating_vgws = each.value.route_table_propagating_vgws
  dynamic "route" {
    for_each = each.value.route_table_route != null ? toset(each.value.route_table_route) : []
    content {
      cidr_block                 = route.value.route_cidr_block
      ipv6_cidr_block            = route.value.route_ipv6_cidr_block
      destination_prefix_list_id = route.value.route_destination_prefix_list_id
      carrier_gateway_id         = route.value.route_carrier_gateway_id
      core_network_arn           = route.value.route_core_network_arn
      egress_only_gateway_id     = route.value.route_egress_only_gateway_id
      gateway_id                 = route.value.route_gateway_id
      local_gateway_id           = route.value.route_local_gateway_id
      nat_gateway_id             = route.value.route_nat_gateway_id
      network_interface_id       = route.value.route_network_interface_id
      transit_gateway_id         = route.value.route_transit_gateway_id
      vpc_endpoint_id            = route.value.route_vpc_endpoint_id
      vpc_peering_connection_id  = route.value.route_vpc_peering_connection_id
    }
  }
}