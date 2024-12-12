#INSTANCE VARIABLES
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
    instance_security_group_tags               = map(string) #changes
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