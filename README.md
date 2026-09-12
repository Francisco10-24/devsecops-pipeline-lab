# devsecops-pipeline-lab
Laboratorio 5 Desarrollo en la Nube

## Módulo: static-site

Crea un bucket S3 configurado como sitio web estático público.

### Variables de entrada

| Nombre | Tipo | Requerida | Descripción |
|--------|------|-----------|-------------|
| bucket_name | string | sí | devsecops-lab-recinos-2026 |
| index_file_path | string | sí | devsecops-pipeline-lab\devsecops-pipeline-lab\website  |
| environment | string | no (default: dev) | Edevsecops-lab-recinos-2026.s3-website.us-east-2.amazonaws.com |
| tags | map(string) | no | V1.0.0 |

### Salidas

| Nombre | Descripción |
|--------|-------------|
| website_url | devsecops-lab-recinos-2026.s3-website.us-east-2.amazonaws.com |
| bucket_arn | devsecops-lab-recinos-2026 |
