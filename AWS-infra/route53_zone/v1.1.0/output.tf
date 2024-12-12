output "route53_zone_output" {
  description = "route53 zone output values"
  value = { for k, v in aws_route53_zone.route53_zone : k => {
    id       = v.zone_id
    arn      = v.arn
    tags_all = v.tags_all
    }
  }
}