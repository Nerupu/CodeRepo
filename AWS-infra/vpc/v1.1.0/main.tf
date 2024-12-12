resource "aws_vpc" "vpc" {
  for_each                             = var.vpc_variables
  tags                                 = each.value.vpc_tags
  cidr_block                           = each.value.vpc_cidr_block
  instance_tenancy                     = each.value.vpc_instance_tenancy
  ipv4_ipam_pool_id                    = each.value.vpc_ipv4_ipam_pool_id
  ipv4_netmask_length                  = each.value.vpc_ipv4_netmask_length
  ipv6_cidr_block                      = each.value.vpc_ipv6_cidr_block
  ipv6_ipam_pool_id                    = each.value.vpc_ipv6_ipam_pool_id
  ipv6_netmask_length                  = each.value.vpc_ipv6_netmask_length
  ipv6_cidr_block_network_border_group = each.value.vpc_ipv6_cidr_block_network_border_group
  enable_dns_support                   = each.value.vpc_enable_dns_support
  enable_network_address_usage_metrics = each.value.vpc_enable_network_address_usage_metrics
  enable_dns_hostnames                 = each.value.vpc_enable_dns_hostnames
  enable_classiclink                   = each.value.vpc_enable_classiclink
  enable_classiclink_dns_support       = each.value.vpc_enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block     = each.value.vpc_assign_generated_ipv6_cidr_block
}