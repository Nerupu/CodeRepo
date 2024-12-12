data "aws_vpc" "vpc_id" {
  for_each = var.instance_variables
  tags     = each.value.instance_vpc_tags
}

data "aws_subnet" "subnet_id" {
  for_each = var.instance_variables
  tags     = each.value.instance_subnet_tags
  vpc_id   = data.aws_vpc.vpc_id[each.key].id
}
#changes
data "aws_security_group" "security_group_id" {
  for_each = var.instance_variables
  tags     = each.value.instance_security_group_tags
}

resource "aws_instance" "instance" {
  for_each                             = var.instance_variables
  tags                                 = each.value.instance_tags
  ami                                  = each.value.instance_ami
  associate_public_ip_address          = each.value.instance_associate_public_ip_address
  availability_zone                    = each.value.instance_availability_zone
  cpu_core_count                       = each.value.instance_cpu_core_count
  cpu_threads_per_core                 = each.value.instance_cpu_threads_per_core
  disable_api_stop                     = each.value.instance_disable_api_stop
  disable_api_termination              = each.value.instance_disable_api_termination
  ebs_optimized                        = each.value.instance_ebs_optimized
  get_password_data                    = each.value.instance_get_password_data
  hibernation                          = each.value.instance_hibernation
  host_id                              = each.value.instance_host_id
  host_resource_group_arn              = each.value.instance_host_resource_group_arn
  iam_instance_profile                 = each.value.instance_iam_instance_profile
  instance_initiated_shutdown_behavior = each.value.instance_instance_initiated_shutdown_behavior
  instance_type                        = each.value.instance_instance_type
  ipv6_address_count                   = each.value.instance_ipv6_address_count
  ipv6_addresses                       = each.value.instance_ipv6_addresses
  key_name                             = each.value.instance_key_name
  monitoring                           = each.value.instance_monitoring
  placement_group                      = each.value.instance_placement_group
  placement_partition_number           = each.value.instance_placement_partition_number
  private_ip                           = each.value.instance_private_ip
  secondary_private_ips                = each.value.instance_secondary_private_ips
  security_groups                      = each.value.instance_security_groups
  source_dest_check                    = each.value.instance_source_dest_check
  subnet_id                            = data.aws_subnet.subnet_id[each.key].id
  tenancy                              = each.value.instance_tenancy
  user_data                            = each.value.instance_user_data
  user_data_base64                     = each.value.instance_user_data_base64
  user_data_replace_on_change          = each.value.instance_user_data_replace_on_change
  volume_tags                          = each.value.instance_volume_tags
  vpc_security_group_ids               = aws_security_group.security_group.security_group_output  #[data.aws_security_group.security_group_id[each.key].id] #changes
  #changes
  lifecycle {
   ignore_changes = [
      root_block_device
    ]
  }

  dynamic "capacity_reservation_specification" {
    for_each = each.value.instance_capacity_reservation_specification != null ? toset(each.value.instance_capacity_reservation_specification) : []
    content {
      capacity_reservation_preference = capacity_reservation_specification.value.capacity_reservation_specification_capacity_reservation_preference
      dynamic "capacity_reservation_target" {
        for_each = capacity_reservation_specification.value.capacity_reservation_specification_capacity_reservation_target != null ? toset(capacity_reservation_specification.value.capacity_reservation_specification_capacity_reservation_target) : []
        content {
          capacity_reservation_id                 = capacity_reservation_target.value.capacity_reservation_target_capacity_reservation_id
          capacity_reservation_resource_group_arn = capacity_reservation_target.value.capacity_reservation_target_capacity_reservation_resource_group_arn
        }
      }
    }
  }

  dynamic "credit_specification" {
    for_each = each.value.instance_credit_specification != null ? [1] : []
    content {
      cpu_credits = each.value.instance_credit_specification.credit_specification_cpu_credits
    }
  }

  dynamic "root_block_device" {
    for_each = each.value.instance_root_block_device != null ? [1] : []
    content {
      delete_on_termination = each.value.instance_root_block_device.root_block_device_delete_on_termination
      encrypted             = each.value.instance_root_block_device.root_block_device_encrypted
      iops                  = each.value.instance_root_block_device.root_block_device_iops
      kms_key_id            = each.value.instance_root_block_device.root_block_device_kms_key_id
      tags                  = each.value.instance_root_block_device.root_block_device_tags
      throughput            = each.value.instance_root_block_device.root_block_device_throughput
      volume_size           = each.value.instance_root_block_device.root_block_device_volume_size
      volume_type           = each.value.instance_root_block_device.root_block_device_volume_type
    }
  }

  dynamic "ebs_block_device" {
    for_each = each.value.instance_ebs_block_device != null ? each.value.instance_ebs_block_device : []
    content {
      delete_on_termination = ebs_block_device.value.ebs_block_device_delete_on_termination
      device_name           = ebs_block_device.value.ebs_block_device_device_name
      encrypted             = ebs_block_device.value.ebs_block_device_encrypted
      iops                  = ebs_block_device.value.ebs_block_device_iops
      kms_key_id            = ebs_block_device.value.ebs_block_device_kms_key_id
      snapshot_id           = ebs_block_device.value.ebs_block_device_snapshot_id
      tags                  = ebs_block_device.value.ebs_block_device_tags
      throughput            = ebs_block_device.value.ebs_block_device_throughput
      volume_size           = ebs_block_device.value.ebs_block_device_volume_size
      volume_type           = ebs_block_device.value.ebs_block_device_volume_type
    }
  }

  dynamic "ephemeral_block_device" {
    for_each = each.value.instance_ephemeral_block_device != null ? [1] : []
    content {
      device_name  = each.value.instance_ephemeral_block_device.ephemeral_block_device_device_name
      no_device    = each.value.instance_ephemeral_block_device.ephemeral_block_device_device_nameno_device
      virtual_name = each.value.instance_ephemeral_block_device.ephemeral_block_device_device_namevirtual_name
    }
  }

  dynamic "enclave_options" {
    for_each = each.value.instance_enclave_options != null ? [1] : []
    content {
      enabled = each.value.instance_enclave_options.enclave_options_enabled
    }
  }

  dynamic "maintenance_options" {
    for_each = each.value.instance_maintenance_options != null ? [1] : []
    content {
      auto_recovery = each.value.instance_maintenance_options.maintenance_options_auto_recovery
    }
  }

  dynamic "metadata_options" {
    for_each = each.value.instance_metadata_options != null ? [1] : []
    content {
      http_endpoint               = each.value.instance_metadata_options.metadata_options_http_endpoint
      http_put_response_hop_limit = each.value.instance_metadata_options.metadata_options_http_put_response_hop_limit
      http_tokens                 = each.value.instance_metadata_options.metadata_options_http_tokens
      instance_metadata_tags      = each.value.instance_metadata_options.metadata_options_instance_metadata_tags
    }
  }

  dynamic "network_interface" {
    for_each = each.value.instance_network_interface != null ? [1] : []
    content {
      delete_on_termination = each.value.instance_network_interface.network_interface_delete_on_termination
      device_index          = each.value.instance_network_interface.network_interface_device_index
      network_card_index    = each.value.instance_network_interface.network_interface_network_card_index
      network_interface_id  = each.value.instance_network_interface.network_interface_network_interface_id
    }
  }

  dynamic "private_dns_name_options" {
    for_each = each.value.instance_private_dns_name_options != null ? [1] : []
    content {
      enable_resource_name_dns_aaaa_record = each.value.instance_private_dns_name_options.private_dns_name_options_enable_resource_name_dns_aaaa_record
      enable_resource_name_dns_a_record    = each.value.instance_private_dns_name_options.private_dns_name_options_enable_resource_name_dns_a_record
      hostname_type                        = each.value.instance_private_dns_name_options.private_dns_name_options_hostname_type
    }
  }

  dynamic "launch_template" {
    for_each = each.value.instance_launch_template != null ? [1] : []
    content {
      id      = each.value.instance_launch_template.launch_template_id
      name    = each.value.instance_launch_template.launch_template_name
      version = each.value.instance_launch_template.launch_template_version
    }
  }
}