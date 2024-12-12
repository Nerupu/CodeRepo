#Aws Profile
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
    vpc_enable_dns_hostnames                 = true
    vpc_enable_classiclink                   = false
    vpc_enable_classiclink_dns_support       = false
    vpc_assign_generated_ipv6_cidr_block     = false
  }
}

#ROUTE53 ZONE
route53_zone_variables = {
  "route53_zone_1" = {
    route53_zone_name              = "example.com"
    route53_zone_comment           = "Sample zone name"
    route53_zone_delegation_set_id = null
    route53_zone_force_destroy     = false
    route53_zone_tags = {
      Environment = "Production"
      Owner       = "Sample"
    }
    route53_zone_vpc_tags =  {
      "Name" = "samplevpc000001"
    }
    route53_zone_vpc_enable = true
  }
}