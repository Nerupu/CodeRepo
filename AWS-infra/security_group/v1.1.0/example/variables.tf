#VPC VARIABLES
variable "vpc_variables" {
  description = "Map of vpc variables"
  default     = {}
  type = map(object({
    vpc_tags                                 = map(string)
    vpc_cidr_block                           = string
    vpc_instance_tenancy                     = string
    vpc_ipv4_ipam_pool_id                    = string
    vpc_ipv4_netmask_length                  = string
    vpc_ipv6_cidr_block                      = string
    vpc_ipv6_ipam_pool_id                    = string
    vpc_ipv6_netmask_length                  = number
    vpc_ipv6_cidr_block_network_border_group = string
    vpc_enable_dns_support                   = bool
    vpc_enable_network_address_usage_metrics = bool
    vpc_enable_dns_hostnames                 = bool
    vpc_enable_classiclink                   = bool
    vpc_enable_classiclink_dns_support       = bool
    vpc_assign_generated_ipv6_cidr_block     = bool
  }))
}

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