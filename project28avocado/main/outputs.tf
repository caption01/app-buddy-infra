output "app_bucket_id" {
  description = "s3 static bucket app id"
  value       = module.s3.app_bucket_id
}

output "app_web_site_domain" {
  description = "s3 app bucket domain, used to create Route 53 alias records"
  value       = module.s3.app_web_site_domain
}

output "app_web_site_endpoint" {
  description = "s3 app bucket endpoint"
  value       = module.s3.app_web_site_endpoint
}


output "repo_id" {
  description = "app repository id"
  value       = module.codecommit.repo_id
}

output "repo_arn" {
  description = "app repository arn"
  value       = module.codecommit.repo_arn
}
