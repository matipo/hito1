output "alb_dns" {
  description = "DNS del Application Load Balancer"
  value       = module.alb.alb_dns
}

output "vpc_id" {
  description = "ID de la VPC"
  value       = module.network.vpc_id
}

output "cluster_name" {
  description = "Nombre del cluster ECS"
  value       = module.ecs.cluster_name
}

output "repository_url" {
  description = "URL del repositorio ECR"
  value       = module.ecr.repository_url
  sensitive   = true
}

output "dynamodb_table_name" {
  description = "Nombre de la tabla DynamoDB de la aplicación"
  value       = module.database.table_name
}

output "dynamodb_table_arn" {
  description = "ARN de la tabla DynamoDB de la aplicación"
  value       = module.database.table_arn
  sensitive   = true
}
