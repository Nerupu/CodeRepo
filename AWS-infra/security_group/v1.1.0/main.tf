data "aws_vpc" "vpc_id" {
  for_each = var.security_group_variables
  tags     = each.value.security_group_vpc_tags
}

resource "aws_security_group" "security_group" {
  for_each               = var.security_group_variables
  tags                   = each.value.security_group_tags
  name                   = each.value.security_group_name
  description            = each.value.security_group_description
  name_prefix            = each.value.security_group_name_prefix
  revoke_rules_on_delete = each.value.security_group_revoke_rules_on_delete
  vpc_id                 = data.aws_vpc.vpc_id[each.key].id
  dynamic "egress" {
    for_each = each.value.security_group_egress != null ? toset(each.value.security_group_egress) : []
    content {
      from_port        = egress.value.egress_from_port
      to_port          = egress.value.egress_to_port
      protocol         = egress.value.egress_protocol
      cidr_blocks      = egress.value.egress_cidr_blocks
      description      = egress.value.egress_description
      ipv6_cidr_blocks = egress.value.egress_ipv6_cidr_blocks
      prefix_list_ids  = egress.value.egress_prefix_list_ids
      security_groups  = egress.value.egress_security_groups
      self             = egress.value.egress_self
    }
  }
  dynamic "ingress" {
    for_each = each.value.security_group_ingress != null ? toset(each.value.security_group_ingress) : []
    content {
      from_port        = ingress.value.ingress_from_port
      to_port          = ingress.value.ingress_to_port
      protocol         = ingress.value.ingress_protocol
      cidr_blocks      = ingress.value.ingress_cidr_blocks
      description      = ingress.value.ingress_description
      ipv6_cidr_blocks = ingress.value.ingress_ipv6_cidr_blocks
      prefix_list_ids  = ingress.value.ingress_prefix_list_ids
      security_groups  = ingress.value.ingress_security_groups
      self             = ingress.value.ingress_self
    }
  }
}