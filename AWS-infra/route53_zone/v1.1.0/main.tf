data "aws_region" "current" {}

data "aws_vpc" "vpc_id" {
  for_each = { for k, v in var.route53_zone_variables : k => v if v.route53_zone_vpc_enable == true }
  tags     = each.value.route53_zone_vpc_tags
}

resource "aws_route53_zone" "route53_zone" {
  for_each          = var.route53_zone_variables
  name              = each.value.route53_zone_name
  comment           = each.value.route53_zone_comment
  delegation_set_id = each.value.route53_zone_delegation_set_id
  force_destroy     = each.value.route53_zone_force_destroy
  tags              = each.value.route53_zone_tags
  dynamic "vpc" {
    for_each = each.value.route53_zone_vpc_enable == true ? [1] : []
    content {
      vpc_id     = data.aws_vpc.vpc_id[each.key].id
      vpc_region = data.aws_region.current.name
    }
  }
}