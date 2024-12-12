#VPC
vpc_variables = {
  "vpc_1" = {
    vpc_tags = {
      "Name" = "Samplevpc000001"
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

#SUBNET
subnet_variables = {
  "subnet_1" = {
    subnet_tags = {
      "Name" = "Samplesub000001"
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
      "Name" = "Samplevpc000001"
    }
    subnet_availability_zone_name = null
  },
  "subnet_2" = {
    subnet_tags = {
      "Name" = "Samplesub000002"
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
      "Name" = "Samplevpc000001"
    }
    subnet_availability_zone_name = null
  }
}

#SECURITY GROUP
security_group_variables = {
  "security_group_1" = {
    security_group_tags = {
      "Name" = "Samplesg000001"
    }
    security_group_name                   = "Samplesg000001"
    security_group_description            = "Sample security group"
    security_group_name_prefix            = null
    security_group_revoke_rules_on_delete = false
    security_group_vpc_tags = {
      "Name" = "Samplevpc000001"
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

#LOAD BALANCER
lb_variables = {
  "lb_1" = {
    lb_name                 = "samplelb000001"
    lb_internal             = true
    lb_load_balancer_type   = "application"
    lb_security_groups_tags = {
      "Name" = "Samplesg000001"
    }
    lb_vpc_tags = {
      "Name" = "Samplevpc000001"
    }
    lb_subnet_tags = {
      "Type" = "lb"
    }
    lb_enable_deletion_protection = false
    lb_tags = {
      "Name" = "samplelb000001"
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

region  = "ap-south-1"
profile = "default"