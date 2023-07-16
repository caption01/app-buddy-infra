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
