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

#SECURITY GROUP

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
      ingress_from_port        = 8000   #(Required)
      ingress_to_port          = 8000   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
    }]
  
    security_group_ingress = [{        #(Optional)
      ingress_from_port        = 9997   #(Required)
      ingress_to_port          = 9997   #(Required)
      ingress_protocol         = "TCP" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
    }]

      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8088   #(Required)
      ingress_to_port          = 8088   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
    }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8191   #(Required)
      ingress_to_port          = 8191   #(Required)
      ingress_protocol         = "TCP" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]

      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 9887   #(Required)
      ingress_to_port          = 9887   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8181   #(Required)
      ingress_to_port          = 8181   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]

      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8081   #(Required)
      ingress_to_port          = 8081   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8065   #(Required)
      ingress_to_port          = 8065   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8089   #(Required)
      ingress_to_port          = 8089   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8089   #(Required)
      ingress_to_port          = 8089   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8089   #(Required)
      ingress_to_port          = 8089   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8089   #(Required)
      ingress_to_port          = 8089   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8089   #(Required)
      ingress_to_port          = 8089   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 8089   #(Required)
      ingress_to_port          = 8089   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 9887   #(Required)
      ingress_to_port          = 9887   #(Required)
      ingress_protocol         = "tcp" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
      security_group_ingress = [{        #(Optional)
      ingress_from_port        = 443   #(Required)
      ingress_to_port          = 443   #(Required)
      ingress_protocol         = "HTTPS" #(Required)
      ingress_cidr_blocks      = ["0.0.0.0/0"]
      ingress_description      = "Sampleingress"
      ingress_ipv6_cidr_blocks = ["::/0"]
      ingress_prefix_list_ids  = null
      ingress_security_groups  = null
      ingress_self             = null
  }]
  }
}


region  = "eu-west-1"
profile = "default"