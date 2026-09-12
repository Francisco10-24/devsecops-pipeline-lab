output "website_url" {
  description = "URL pública del sitio estático (dev)"
  value       = module.static_site.website_url
}

output "bucket_name" {
  description = "Nombre del bucket S3 (dev)"
  value       = module.static_site.bucket_name
}
