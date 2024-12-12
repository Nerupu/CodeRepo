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

variable "route53_zone_variables" {
  description = "Map of Route53 zone variables"
  default     = {}
  type = map(object({
    route53_zone_name              = string
    route53_zone_comment           = string
    route53_zone_delegation_set_id = string
    route53_zone_force_destroy     = bool
    route53_zone_tags              = map(string)
    route53_zone_vpc_tags          = map(string)
    route53_zone_vpc_enable        = bool
  }))
}

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

variable "route_table_variables" {
  description = "Map of route table variables"
  type = map(object({
    route_table_tags             = map(string)
    route_table_propagating_vgws = list(string)
    route_table_vpc_tags         = map(string)
    route_table_route = list(object({
      route_cidr_block                 = string
      route_ipv6_cidr_block            = string
      route_destination_prefix_list_id = string
      route_carrier_gateway_id         = string
      route_core_network_arn           = string
      route_egress_only_gateway_id     = string
      route_gateway_id                 = string
      route_local_gateway_id           = string
      route_nat_gateway_id             = string
      route_network_interface_id       = string
      route_transit_gateway_id         = string
      route_vpc_endpoint_id            = string
      route_vpc_peering_connection_id  = string
    }))
  }))
  default = {}
}

variable "route_table_association_variables" {
  description = "Map of route table association variables"
  default     = {}
  type = map(object({
    route_table_association_route_table_tags = map(string)
    route_table_association_subnet_tags      = map(string)
    route_table_association_vpc_tags         = map(string)
  }))
}

variable "nat_gateway_variables" {
  description = "Map of nat gateway variables"
  type = map(object({
    nat_gateway_tags              = map(string)
    nat_gateway_allocation_id     = string
    nat_gateway_connectivity_type = string
    nat_gateway_private_ip        = string
    nat_gatway_subnet_tags        = map(string)
    nat_gatway_vpc_tags           = map(string)
  }))
  default = {}
}

variable "key_pair_variables" {
  description = "Map of Key pair variables"
  default     = {}
  type = map(object({
    key_pair_key_name        = string
    key_pair_key_name_prefix = string
    key_pair_public_key      = string
    key_pair_tags            = map(string)
  }))
}

variable "instance_variables" {
  description = "Map of instance variables"
  type = map(object({
    instance_tags                                 = map(string)
    instance_ami                                  = string
    instance_associate_public_ip_address          = bool
    instance_availability_zone                    = string
    instance_cpu_core_count                       = number
    instance_cpu_threads_per_core                 = number
    instance_disable_api_stop                     = bool
    instance_disable_api_termination              = bool
    instance_ebs_optimized                        = bool
    instance_get_password_data                    = bool
    instance_hibernation                          = bool
    instance_host_id                              = string
    instance_host_resource_group_arn              = string
    instance_iam_instance_profile                 = string
    instance_instance_initiated_shutdown_behavior = string
    instance_instance_type                        = string
    instance_ipv6_address_count                   = number
    instance_ipv6_addresses                       = list(string)
    instance_key_name                             = string
    instance_monitoring                           = bool
    instance_placement_group                      = string
    instance_placement_partition_number           = number
    instance_private_ip                           = string
    instance_secondary_private_ips                = list(string)
    instance_security_groups                      = list(string)
    instance_source_dest_check                    = bool
    instance_tenancy                              = string
    instance_user_data                            = string
    instance_user_data_base64                     = string
    instance_user_data_replace_on_change          = bool
    instance_volume_tags                          = map(string)
    instance_security_group_tags               = map(string)
    instance_capacity_reservation_specification = object({
      capacity_reservation_preference = string
      capacity_reservation_target = object({
        capacity_reservation_target_capacity_reservation_id                 = string
        capacity_reservation_target_capacity_reservation_resource_group_arn = string
      })
    })
    instance_credit_specification = object({
      credit_specification_cpu_credits = string
    })
    instance_root_block_device = object({
      root_block_device_delete_on_termination = bool
      root_block_device_encrypted             = bool
      root_block_device_iops                  = number
      root_block_device_kms_key_id            = string
      root_block_device_tags                  = map(string)
      root_block_device_throughput            = string
      root_block_device_volume_size           = number
      root_block_device_volume_type           = string
    })
    instance_ebs_block_device = list(object({
      ebs_block_device_delete_on_termination = bool
      ebs_block_device_device_name           = string
      ebs_block_device_encrypted             = bool
      ebs_block_device_iops                  = number
      ebs_block_device_kms_key_id            = string
      ebs_block_device_snapshot_id           = string
      ebs_block_device_tags                  = map(string)
      ebs_block_device_throughput            = string
      ebs_block_device_volume_size           = number
      ebs_block_device_volume_type           = string
    }))
    instance_ephemeral_block_device = object({
      ephemeral_block_device_device_name             = string
      ephemeral_block_device_device_nameno_device    = string
      ephemeral_block_device_device_namevirtual_name = string
    })
    instance_enclave_options = object({
      enclave_options_enabled = bool
    })
    instance_maintenance_options = object({
      maintenance_options_auto_recovery = string
    })
    instance_metadata_options = object({
      metadata_options_http_endpoint               = string
      metadata_options_http_put_response_hop_limit = number
      metadata_options_http_tokens                 = string
      metadata_options_instance_metadata_tags      = map(string)
    })
    instance_network_interface = object({
      network_interface_delete_on_termination = bool
      network_interface_device_index          = string
      network_interface_network_card_index    = string
      network_interface_network_interface_id  = string
    })
    instance_private_dns_name_options = object({
      private_dns_name_options_enable_resource_name_dns_aaaa_record = string
      private_dns_name_options_enable_resource_name_dns_a_record    = string
      private_dns_name_options_hostname_type                        = string
    })
    instance_launch_template = object({
      launch_template_id      = string
      launch_template_name    = string
      launch_template_version = string
    })
    instance_vpc_tags    = map(string)
    instance_subnet_tags = map(string)
  }))
  default = {}
}

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