output "alb_arn" {
  description = "ARN del Application Load Balancer"
  value       = aws_lb.alb.arn
  sensitive   = true
}

output "alb_dns" {
  description = "DNS del Application Load Balancer"
  value       = aws_lb.alb.dns_name
}

output "target_group_arn" {
  description = "ARN del Target Group"
  value       = aws_lb_target_group.tg.arn
  sensitive   = true
}
