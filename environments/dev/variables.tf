variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-2"
}

variable "bucket_name" {
  description = "Nombre único global del bucket S3"
  type        = string
  default     = "devsecops-lab-recinos-2026"
}
