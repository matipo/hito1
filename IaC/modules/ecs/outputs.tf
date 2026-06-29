output "cluster_name" {
  description = "Nombre del cluster ECS"
  value       = aws_ecs_cluster.cluster.name
}

output "cluster_arn" {
  description = "ARN del cluster ECS"
  value       = aws_ecs_cluster.cluster.arn
  sensitive   = true
}

output "service_name" {
  description = "Nombre del servicio ECS"
  value       = aws_ecs_service.service.name
}

output "task_definition_arn" {
  description = "ARN de la Task Definition"
  value       = aws_ecs_task_definition.task.arn
  sensitive   = true
}

output "execution_role_arn" {
  description = "ARN del rol de ejecución ECS"
  value       = aws_iam_role.ecs_execution.arn
  sensitive   = true
}

output "task_role_arn" {
  description = "ARN del rol de tarea ECS"
  value       = aws_iam_role.ecs_task.arn
  sensitive   = true
}

output "log_group_name" {
  description = "Nombre del grupo de logs de CloudWatch"
  value       = aws_cloudwatch_log_group.ecs.name
}
