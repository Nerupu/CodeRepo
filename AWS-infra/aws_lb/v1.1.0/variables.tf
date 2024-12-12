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