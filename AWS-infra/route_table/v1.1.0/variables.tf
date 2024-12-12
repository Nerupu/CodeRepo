#ROUTE TABLE VARIABLES
variable "route_table_variables" {
  description = "Map of route table variables"
  type = map(object({
    route_table_tags             = map(string)
    route_table_propagating_vgws = list(string)
    route_table_vpc_tags         = map(string)
    route_table_route = list(object({
      route_cidr_block                 = string
      route_ipv6_cidr_block            = string
      route_destination_prefix_list_id = string
      route_carrier_gateway_id         = string
      route_core_network_arn           = string
      route_egress_only_gateway_id     = string
      route_gateway_id                 = string
      route_local_gateway_id           = string
      route_nat_gateway_id             = string
      route_network_interface_id       = string
      route_transit_gateway_id         = string
      route_vpc_endpoint_id            = string
      route_vpc_peering_connection_id  = string
    }))
  }))
  default = {}
}