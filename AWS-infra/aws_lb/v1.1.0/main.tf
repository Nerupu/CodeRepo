data "aws_vpc" "vpc_id" {
  for_each = var.lb_variables
  tags     = each.value.lb_vpc_tags
}

data "aws_subnet_ids" "subnet_ids" {
  for_each = var.lb_variables
  vpc_id   = data.aws_vpc.vpc_id[each.key].id
  tags     = each.value.lb_subnet_tags
}

data "aws_security_groups" "security_groups" {
  for_each = var.lb_variables
  tags = each.value.lb_security_groups_tags
}

data "aws_s3_bucket" "s3_bucket" {
  for_each = { for k, v in var.lb_variables : k => v if v.lb_s3_bucket_name != null }
  bucket   = each.value.lb_s3_bucket_name
}

resource "aws_lb" "lb" {
  for_each                                    = var.lb_variables
  tags                                        = each.value.lb_tags
  name                                        = each.value.lb_name
  internal                                    = each.value.lb_internal
  load_balancer_type                          = each.value.lb_load_balancer_type
  security_groups                             = data.aws_security_groups.security_groups[each.key].ids
  subnets                                     = data.aws_subnet_ids.subnet_ids[each.key].ids
  enable_deletion_protection                  = each.value.lb_enable_deletion_protection
  customer_owned_ipv4_pool                    = each.value.lb_customer_owned_ipv4_pool
  desync_mitigation_mode                      = each.value.lb_desync_mitigation_mode
  drop_invalid_header_fields                  = each.value.lb_drop_invalid_header_fields
  enable_cross_zone_load_balancing            = each.value.lb_enable_cross_zone_load_balancing
  enable_http2                                = each.value.lb_enable_http2
  enable_waf_fail_open                        = each.value.lb_enable_waf_fail_open
  idle_timeout                                = each.value.lb_idle_timeout
  ip_address_type                             = each.value.lb_ip_address_type
  name_prefix                                 = each.value.lb_name_prefix
  preserve_host_header                        = each.value.lb_preserve_host_header

  dynamic "access_logs" {
    for_each = each.value.lb_s3_bucket_name != null ? [1] : []
    content {
      bucket  = data.aws_s3_bucket.s3_bucket[each.key].name
      enabled = each.value.lb_access_logs.access_logs_enabled
      prefix  = each.value.lb_access_logs.access_logs_prefix
    }
  }
}