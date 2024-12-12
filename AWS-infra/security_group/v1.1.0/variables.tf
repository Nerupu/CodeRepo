#SECURITY GROUP VARIABLES
variable "security_group_variables" {
  description = "Map of security group variables"
  default     = {}
  type = map(object({
    security_group_tags                   = map(string)
    security_group_name                   = string
    security_group_description            = string
    security_group_name_prefix            = string
    security_group_revoke_rules_on_delete = bool
    security_group_vpc_tags               = map(string)
    security_group_egress = list(object({ #(Optional)
      egress_from_port        = number    #(Required)
      egress_to_port          = number    #(Required)
      egress_protocol         = string    #(Required)
      egress_cidr_blocks      = list(string)
      egress_description      = string
      egress_ipv6_cidr_blocks = list(string)
      egress_prefix_list_ids  = list(string)
      egress_security_groups  = list(string)
      egress_self             = string
    }))
    security_group_ingress = list(object({ #(Optional)
      ingress_from_port        = number    #(Required)
      ingress_to_port          = number    #(Required)
      ingress_protocol         = string
      ingress_cidr_blocks      = list(string)
      ingress_description      = string
      ingress_ipv6_cidr_blocks = list(string)
      ingress_prefix_list_ids  = list(string)
      ingress_security_groups  = list(string)
      ingress_self             = string
    }))
  }))
}