output "alb_dns" {
  description = "Application load balancer search heads dns."
  value       = aws_lb.alb_splunk.dns_name
}