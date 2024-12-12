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

#SUBNET VARIABLES
variable "subnet_variables" {
  description = "Map of subnet variables"
  default     = {}
  type = map(object({
    subnet_tags                                           = map(string)
    subnet_assign_ipv6_address_on_creation                = bool
    subnet_availability_zone                              = string
    subnet_cidr_block                                     = string
    subnet_customer_owned_ipv4_pool                       = string
    subnet_enable_dns64                                   = bool
    subnet_enable_resource_name_dns_aaaa_record_on_launch = bool
    subnet_enable_resource_name_dns_a_record_on_launch    = bool
    subnet_ipv6_cidr_block                                = string
    subnet_ipv6_native                                    = bool
    subnet_map_customer_owned_ip_on_launch                = bool
    subnet_map_public_ip_on_launch                        = bool
    subnet_outpost_arn                                    = string
    subnet_private_dns_hostname_type_on_launch            = string
    subnet_vpc_tags                                       = map(string)
    subnet_availability_zone_name                         = string
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

#LOAD BALANCER VARIABLES
variable "lb_variables" {
  description = "Map of lb variables"
  default     = {}
  type = map(object({
    lb_name                                        = string
    lb_internal                                    = bool
    lb_load_balancer_type                          = string
    lb_security_groups_tags                        = map(string)
    lb_vpc_tags                                    = map(string)
    lb_subnet_tags                                 = map(string)
    lb_enable_deletion_protection                  = bool
    lb_tags                                        = map(string)
    lb_s3_bucket_name                              = string
    lb_customer_owned_ipv4_pool                    = string
    lb_desync_mitigation_mode                      = string
    lb_drop_invalid_header_fields                  = string
    lb_enable_cross_zone_load_balancing            = bool
    lb_enable_http2                                = bool
    lb_enable_tls_version_and_cipher_suite_headers = bool
    lb_enable_xff_client_port                      = bool
    lb_enable_waf_fail_open                        = bool
    lb_idle_timeout                                = number
    lb_ip_address_type                             = string
    lb_name_prefix                                 = string
    lb_preserve_host_header                        = bool
    lb_xff_header_processing_mode                  = string
    lb_access_logs = object({
      access_logs_enabled = bool
      access_logs_prefix  = string
    })
  }))
}