#Account
region  = "ap-south-1"
profile = "default"

#VPC
vpc_variables = {
  "vpc_1" = {
    vpc_tags = {
      "Name" = "Samplevpc000001"
    }
    vpc_cidr_block                           = "10.0.0.0/16"
    vpc_instance_tenancy                     = "default"
    vpc_ipv4_ipam_pool_id                    = null
    vpc_ipv4_netmask_length                  = null
    vpc_ipv6_cidr_block                      = null
    vpc_ipv6_ipam_pool_id                    = null
    vpc_ipv6_netmask_length                  = null
    vpc_ipv6_cidr_block_network_border_group = null
    vpc_enable_dns_support                   = true
    vpc_enable_network_address_usage_metrics = false
    vpc_enable_dns_hostnames                 = false
    vpc_enable_classiclink                   = false
    vpc_enable_classiclink_dns_support       = false
    vpc_assign_generated_ipv6_cidr_block     = false
  }
}

#ROUTE TABLE 
route_table_variables = {
  "route_table_1" = {
    route_table_tags = {
      "Name" = "Samplert000001"
    }
    route_table_propagating_vgws = null
    route_table_vpc_tags = {
      "Name" = "Samplevpc000001"
    }
    route_table_route = null
  }
}