output "app_bucket_id" {
  description = "s3 static bucket app id"
  value       = aws_s3_bucket.app_bucket.id
}

output "app_web_site_domain" {
  description = "s3 app bucket domain, used to create Route 53 alias records"
  value       = aws_s3_bucket_website_configuration.s3_static_website_bucket_configuration.website_domain
}

output "app_web_site_endpoint" {
  description = "s3 app bucket endpoint"
  value       = aws_s3_bucket_website_configuration.s3_static_website_bucket_configuration.website_endpoint
}
