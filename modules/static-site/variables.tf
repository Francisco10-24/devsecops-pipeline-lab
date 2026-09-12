variable "bucket_name" {
  description = "Nombre único global del bucket S3"
  type        = string
}

variable "environment" {
  description = "Nombre del entorno (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "index_document_path" {
  description = "Ruta al archivo index.html que se sube al bucket"
  type        = string
}
