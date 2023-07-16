output "repo_id" {
  description = "app repository id"
  value       = aws_codecommit_repository.app_repo.repository_id
}

output "repo_arn" {
  description = "app repository arn"
  value       = aws_codecommit_repository.app_repo.arn
}
