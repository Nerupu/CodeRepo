#VPC VARIABLES
variable "vpc_variables" {
  description = "Map of vpc variables"
  default     = {}
  type = map(object({
    vpc_tags                                 = map(string)
    vpc_cidr_block                           = string
    vpc_instance_tenancy                     = string
    vpc_ipv4_ipam_pool_id                    = string
    vpc_ipv4_netmask_length                  = string
    vpc_ipv6_cidr_block                      = string
    vpc_ipv6_ipam_pool_id                    = string
    vpc_ipv6_netmask_length                  = number
    vpc_ipv6_cidr_block_network_border_group = string
    vpc_enable_dns_support                   = bool
    vpc_enable_network_address_usage_metrics = bool
    vpc_enable_dns_hostnames                 = bool
    vpc_enable_classiclink                   = bool
    vpc_enable_classiclink_dns_support       = bool
    vpc_assign_generated_ipv6_cidr_block     = bool
  }))
}

#SUBNET VARIABLES
variable "subnet_variables" {
  description = "Map of subnet variables"
  default     = {}
  type = map(object({
    subnet_tags                                           = map(string)
    subnet_assign_ipv6_address_on_creation                = bool
    subnet_availability_zone                              = string
    subnet_cidr_block                                     = string
    subnet_customer_owned_ipv4_pool                       = string
    subnet_enable_dns64                                   = bool
    subnet_enable_resource_name_dns_aaaa_record_on_launch = bool
    subnet_enable_resource_name_dns_a_record_on_launch    = bool
    subnet_ipv6_cidr_block                                = string
    subnet_ipv6_native                                    = bool
    subnet_map_customer_owned_ip_on_launch                = bool
    subnet_map_public_ip_on_launch                        = bool
    subnet_outpost_arn                                    = string
    subnet_private_dns_hostname_type_on_launch            = string
    subnet_vpc_tags                                       = map(string)
    subnet_availability_zone_name                         = string
  }))
}

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

#ROUTE TABLE ASSOCIATION VARIABLES
variable "route_table_association_variables" {
  description = "Map of route table association variables"
  default     = {}
  type = map(object({
    route_table_association_route_table_tags = map(string)
    route_table_association_subnet_tags      = map(string)
    route_table_association_vpc_tags         = map(string)
    #route_table_association_route_table_subnet_tags = map(string)
  }))
}