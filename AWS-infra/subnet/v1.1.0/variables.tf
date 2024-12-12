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