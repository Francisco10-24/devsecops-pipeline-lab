# devsecops-pipeline-lab
Laboratorio 5 Desarrollo en la Nube

## Módulo: static-site

Crea un bucket S3 configurado como sitio web estático público.

### Variables de entrada

| Nombre | Tipo | Requerida | Descripción |
|--------|------|-----------|-------------|
| bucket_name | string | sí | Nombre único global del bucket S3 donde se aloja el sitio web |
| index_file_path | string | sí | Ruta relativa al archivo index.html que se despliega en el bucket |
| environment | string | no (default: dev) | Entorno de despliegue; se usa para etiquetar los recursos en AWS |
| tags | map(string) | no | Mapa de etiquetas extra que se agregan al bucket para organización y costos |

### Salidas

| Nombre | Descripción |
|--------|-------------|
| website_url | devsecops-lab-recinos-2026.s3-website.us-east-2.amazonaws.com |
| bucket_arn | devsecops-lab-recinos-2026 |
