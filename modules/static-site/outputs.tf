output "website_url" {
  description = "URL pública del sitio estático"
  value       = aws_s3_bucket_website_configuration.site.website_endpoint
}

output "bucket_name" {
  description = "Nombre del bucket S3 creado"
  value       = aws_s3_bucket.site.id
}
