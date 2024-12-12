#Account
region = "eu-west-1"
profile = "default"

vpc_variables = {
  "vpc_1" = {
    vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    vpc_cidr_block                           = "10.0.0.0/16"
    vpc_instance_tenancy                     = "default"
    vpc_ipv4_ipam_pool_id                    = null
    vpc_ipv4_netmask_length                  = null
    vpc_ipv6_cidr_block                      = null
    vpc_ipv6_ipam_pool_id                    = null
    vpc_ipv6_netmask_length                  = null
    vpc_ipv6_cidr_block_network_border_group = null
    vpc_enable_dns_support                   = true
    vpc_enable_network_address_usage_metrics = false
    vpc_enable_dns_hostnames                 = false
    vpc_enable_classiclink                   = false
    vpc_enable_classiclink_dns_support       = false
    vpc_assign_generated_ipv6_cidr_block     = false
  }
}

route53_zone_variables = {
  "route53_zone_1" = {
    route53_zone_name              = "example.com"
    route53_zone_comment           = "Sample zone name"
    route53_zone_delegation_set_id = null
    route53_zone_force_destroy     = false
    route53_zone_tags = {
      Environment = "Production"
      Owner       = "Sample"
    }
    route53_zone_vpc_tags =  {
      "Name" = "sample-vpc000001-dev"
    }
    route53_zone_vpc_enable = true
  }
}

security_group_variables = {
  "security_group_1" = {
    security_group_tags = {
      "Name" = "sample-sg000001-dev"
    }
    security_group_name                   = "sample-sg000001-dev"
    security_group_description            = "Sample security group"
    security_group_name_prefix            = null
    security_group_revoke_rules_on_delete = false
    security_group_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    security_group_egress = [{    #(Optional)
      egress_from_port        = 0 #(Required)
      egress_to_port          = 0 #(Required)
      egress_protocol         = "-1"
      egress_cidr_blocks      = ["0.0.0.0/0"]
      egress_description      = "Sampleegress"
      egress_ipv6_cidr_blocks = ["::/0"]
      egress_prefix_list_ids  = null
      egress_security_groups  = null
      egress_self             = null
    }]
    security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
    }]
  }
}

subnet_variables = {
  "subnet_1" = {
    subnet_tags = {
      "Name" = "sample-sub000001-dev"
      "Type" = "lb"
    }
    subnet_assign_ipv6_address_on_creation                = false
    subnet_availability_zone                              = "ap-south-1a"
    subnet_cidr_block                                     = "10.0.1.0/24"
    subnet_customer_owned_ipv4_pool                       = null
    subnet_enable_dns64                                   = false
    subnet_enable_resource_name_dns_aaaa_record_on_launch = false
    subnet_enable_resource_name_dns_a_record_on_launch    = false
    subnet_ipv6_cidr_block                                = null
    subnet_ipv6_native                                    = false
    subnet_map_customer_owned_ip_on_launch                = false
    subnet_map_public_ip_on_launch                        = false
    subnet_outpost_arn                                    = null
    subnet_private_dns_hostname_type_on_launch            = null
    subnet_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    subnet_availability_zone_name = null
  },
  "subnet_2" = {
    subnet_tags = {
      "Name" = "sample-sub000002-dev"
      "Type" = "lb"
    }
    subnet_assign_ipv6_address_on_creation                = false
    subnet_availability_zone                              = "ap-south-1b"
    subnet_cidr_block                                     = "10.0.2.0/24"
    subnet_customer_owned_ipv4_pool                       = null
    subnet_enable_dns64                                   = false
    subnet_enable_resource_name_dns_aaaa_record_on_launch = false
    subnet_enable_resource_name_dns_a_record_on_launch    = false
    subnet_ipv6_cidr_block                                = null
    subnet_ipv6_native                                    = false
    subnet_map_customer_owned_ip_on_launch                = false
    subnet_map_public_ip_on_launch                        = false
    subnet_outpost_arn                                    = null
    subnet_private_dns_hostname_type_on_launch            = null
    subnet_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    subnet_availability_zone_name = null
  }
}

route_table_variables = {
  "route_table_1" = {
    route_table_tags = {
      "Name" = "Samplert000001"
    }
    route_table_propagating_vgws = null
    route_table_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    route_table_route = null
  },
  "route_table_2" = {
    route_table_tags = {
      "Name" = "Samplert000002"
    }
    route_table_propagating_vgws = null
    route_table_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    route_table_route = null
  }
}

route_table_association_variables = {
  "route_table_association_1" = {
    route_table_association_route_table_tags = {
      "Name" = "Samplert000001"
    }
    route_table_association_subnet_tags = {
      "Name" = "sample-sub000001-dev"
    }
    route_table_association_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
  },
  "route_table_association_2" = {
    route_table_association_route_table_tags = {
      "Name" = "Samplert000002"
    }
    route_table_association_subnet_tags = {
      "Name" = "sample-sub000002-dev"
    }
    route_table_association_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
  }
}

nat_gateway_variables = {
  "nat_gateway_1" = {
    nat_gateway_tags = {
      "Name" = "sample-nat000001-dev"
    }
    nat_gateway_allocation_id     = null
    nat_gateway_connectivity_type = "private"
    nat_gateway_private_ip        = null
    nat_gatway_subnet_tags = {
      "Name" = "sample-sub000001-dev"
    }
    nat_gatway_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
  },
  "nat_gateway_2" = {
    nat_gateway_tags = {
      "Name" = "sample-nat000002-dev"
    }
    nat_gateway_allocation_id     = null
    nat_gateway_connectivity_type = "private"
    nat_gateway_private_ip        = null
    nat_gatway_subnet_tags = {
      "Name" = "sample-sub000002-dev"
    }
    nat_gatway_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
  }
}

key_pair_variables = {
  "key_pair_1" = {
    key_pair_tags = {
      "Name" = "sample-kp000001-dev"
    }
    key_pair_key_name        = "sample-kp000001-dev"
    key_pair_key_name_prefix = null
    key_pair_public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
  }
}

instance_variables = {
  "instance_1" = {
    instance_tags = {
      "Name" = "sample-ins000001-dev"
    }
    instance_ami                                  = "ami-0f8ca728008ff5af4" #COPY AMI ID FROM AWS. IT WILL CHANGE REGION TO REGION
    instance_associate_public_ip_address          = null
    instance_availability_zone                    = "ap-south-1a"
    instance_cpu_core_count                       = null
    instance_cpu_threads_per_core                 = null
    instance_disable_api_stop                     = false
    instance_disable_api_termination              = false
    instance_ebs_optimized                        = false
    instance_get_password_data                    = false
    instance_hibernation                          = false
    instance_host_id                              = null
    instance_host_resource_group_arn              = null
    instance_iam_instance_profile                 = null
    instance_instance_initiated_shutdown_behavior = "stop"
    instance_instance_type                        = "t2.micro"
    instance_ipv6_address_count                   = null
    instance_ipv6_addresses                       = null
    instance_key_name                             = "sample-kp000001-dev"
    instance_monitoring                           = true
    instance_placement_group                      = null
    instance_placement_partition_number           = null
    instance_private_ip                           = "10.0.1.10"
    instance_secondary_private_ips                = null
    instance_security_groups                      = null
    instance_source_dest_check                    = true
    instance_tenancy                              = "default"
    instance_user_data                            = null
    instance_user_data_base64                     = null
    instance_user_data_replace_on_change          = false
    instance_volume_tags                          = null
    instance_vpc_security_group_ids               = null
    instance_capacity_reservation_specification   = null
    instance_credit_specification                 = null
    instance_root_block_device = {
      root_block_device_delete_on_termination = true
      root_block_device_encrypted             = false
      root_block_device_iops                  = null
      root_block_device_kms_key_id            = null
      root_block_device_tags = {
        "Name" = "samplerv000001"
      }
      root_block_device_throughput  = null
      root_block_device_volume_size = 10
      root_block_device_volume_type = "gp2"
    }
    instance_ebs_block_device         = null
    instance_ephemeral_block_device   = null
    instance_enclave_options          = null
    instance_maintenance_options      = null
    instance_metadata_options         = null
    instance_network_interface        = null
    instance_private_dns_name_options = null
    instance_launch_template          = null
    instance_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    instance_subnet_tags = {
      "Name" = "sample-sub000001-dev"
    }
  }
}

lb_variables = {
  "lb_1" = {
    lb_name                 = "sample-lb000001-dev"
    lb_internal             = true
    lb_load_balancer_type   = "application"
    lb_security_groups_tags = {
      "Name" = "sample-sg000001-dev"
    }
    lb_vpc_tags = {
      "Name" = "sample-vpc000001-dev"
    }
    lb_subnet_tags = {
      "Type" = "lb"
    }
    lb_enable_deletion_protection = false
    lb_tags = {
      "Name" = "sample-lb000001-dev"
    }
    lb_s3_bucket_name                              = null
    lb_customer_owned_ipv4_pool                    = null
    lb_desync_mitigation_mode                      = "strictest"
    lb_drop_invalid_header_fields                  = null
    lb_enable_cross_zone_load_balancing            = false
    lb_enable_http2                                = true
    lb_enable_tls_version_and_cipher_suite_headers = false
    lb_enable_xff_client_port                      = false
    lb_enable_waf_fail_open                        = false
    lb_idle_timeout                                = 60
    lb_ip_address_type                             = "ipv4"
    lb_name_prefix                                 = null
    lb_preserve_host_header                        = false
    lb_xff_header_processing_mode                  = "append"
    lb_access_logs                                 = null
  }
}