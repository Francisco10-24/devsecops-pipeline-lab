###############################################################################
# environments/dev  –  Entorno de desarrollo
###############################################################################

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "devsecops-lab-tfstate-recinos-2026"
    key            = "static-site/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

locals {
  # El workspace "default" (donde está el bucket dev del Lab 5)
  # se sigue llamando "dev" para nombrar los recursos.
  workspace_aliases = {
    default = "dev"
  }
  environment_name = lookup(local.workspace_aliases, terraform.workspace, terraform.workspace)

  environment_settings = {
    dev     = { tags = { Criticidad = "baja" } }
    staging = { tags = { Criticidad = "media" } }
    prod    = { tags = { Criticidad = "alta" } }
  }
}

module "static_site" {
  source = "../../modules/static-site"

  bucket_name         = "devsecops-lab-${local.environment_name}-rauda-2026"
  environment         = local.environment_name
  index_document_path = "${path.module}/../../website/index.html"
}