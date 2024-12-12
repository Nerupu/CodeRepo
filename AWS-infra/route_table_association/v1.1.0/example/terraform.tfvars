#Account
region  = "ap-south-1"
profile = "default"

#VPC
vpc_variables = {
  "vpc_1" = {
    vpc_tags = {
      "Name" = "samplevpc000001"
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

#SUBNET
subnet_variables = {
  "subnet_1" = {
    subnet_tags = {
      "Name" = "samplesub000001"
    }
    subnet_assign_ipv6_address_on_creation                = false
    subnet_availability_zone                              = "ap-south-1a"
    subnet_cidr_block                                     = "10.0.1.0/24"
    subnet_customer_owned_ipv4_pool                       = null
    subnet_enable_dns64                                   = false
    subnet_enable_resource_name_dns_aaaa_record_on_launch = false
    subnet_enable_resource_name_dns_a_record_on_launch    = false
    subnet_ipv6_cidr_block                                = null
    subnet_ipv6_native                                    = false
    subnet_map_customer_owned_ip_on_launch                = false
    subnet_map_public_ip_on_launch                        = false
    subnet_outpost_arn                                    = null
    subnet_private_dns_hostname_type_on_launch            = null
    subnet_vpc_tags = {
      "Name" = "samplevpc000001"
    }
    subnet_availability_zone_name = null
  },
  "subnet_2" = {
    subnet_tags = {
      "Name" = "samplesub000002"
    }
    subnet_assign_ipv6_address_on_creation                = false
    subnet_availability_zone                              = "ap-south-1b"
    subnet_cidr_block                                     = "10.0.2.0/24"
    subnet_customer_owned_ipv4_pool                       = null
    subnet_enable_dns64                                   = false
    subnet_enable_resource_name_dns_aaaa_record_on_launch = false
    subnet_enable_resource_name_dns_a_record_on_launch    = false
    subnet_ipv6_cidr_block                                = null
    subnet_ipv6_native                                    = false
    subnet_map_customer_owned_ip_on_launch                = false
    subnet_map_public_ip_on_launch                        = false
    subnet_outpost_arn                                    = null
    subnet_private_dns_hostname_type_on_launch            = null
    subnet_vpc_tags = {
      "Name" = "samplevpc000001"
    }
    subnet_availability_zone_name = null
  }
}

#ROUTE TABLE 
route_table_variables = {
  "route_table_1" = {
    route_table_tags = {
      "Name" = "samplert000001"
    }
    route_table_propagating_vgws = null
    route_table_vpc_tags = {
      "Name" = "samplevpc000001"
    }
    route_table_route = null
  }
}

#ROUTE TABLE ASSOCIATION VARIABLES
route_table_association_variables = {
  "route_table_association_1" = {
    route_table_association_route_table_tags = {
      "Name" = "samplert000001"
    }
    route_table_association_subnet_tags = {
      "Name" = "samplesub000002"
    }
    route_table_association_vpc_tags = {
      "Name" = "samplevpc000001"
    }
  }
}