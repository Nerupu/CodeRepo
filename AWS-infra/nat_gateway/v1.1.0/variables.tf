#NAT_GATEWAY VARIABLES
variable "nat_gateway_variables" {
  description = "Map of nat gateway variables"
  type = map(object({
    nat_gateway_tags              = map(string)
    nat_gateway_allocation_id     = string
    nat_gateway_connectivity_type = string
    nat_gateway_private_ip        = string
    nat_gatway_subnet_tags        = map(string)
    nat_gatway_vpc_tags           = map(string)
  }))
  default = {}
}