#ROUTE53 VARIABLES
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
