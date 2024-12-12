data "aws_vpc" "vpc_id" {
  for_each = var.subnet_variables
  tags     = each.value.subnet_vpc_tags
}

data "aws_availability_zone" "availability_zone_id" {
  for_each = { for k, v in var.subnet_variables : k => v if v.subnet_availability_zone_name != null }
  name     = each.value.subnet_availability_zone_name
}

resource "aws_subnet" "subnet" {
  for_each                                       = var.subnet_variables
  tags                                           = each.value.subnet_tags
  vpc_id                                         = data.aws_vpc.vpc_id[each.key].id
  assign_ipv6_address_on_creation                = each.value.subnet_assign_ipv6_address_on_creation
  availability_zone                              = each.value.subnet_availability_zone == null ? null : each.value.subnet_availability_zone
  availability_zone_id                           = each.value.subnet_availability_zone != null ? null : each.value.subnet_availability_zone_name == null ? null : data.aws_availability_zone.availability_zone_id[each.key].id
  cidr_block                                     = each.value.subnet_cidr_block
  enable_dns64                                   = each.value.subnet_enable_dns64
  enable_resource_name_dns_aaaa_record_on_launch = each.value.subnet_enable_resource_name_dns_aaaa_record_on_launch
  enable_resource_name_dns_a_record_on_launch    = each.value.subnet_enable_resource_name_dns_a_record_on_launch
  ipv6_cidr_block                                = each.value.subnet_ipv6_cidr_block
  ipv6_native                                    = each.value.subnet_ipv6_native
  map_public_ip_on_launch                        = each.value.subnet_map_public_ip_on_launch
  private_dns_hostname_type_on_launch            = each.value.subnet_private_dns_hostname_type_on_launch
}