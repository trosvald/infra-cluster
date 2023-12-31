terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "monosense"
    workspaces {
      name = "minio"
    }
  }

  required_providers {
    minio = {
      source  = "aminueza/minio"
      version = "2.0.1"
    }
    onepassword = {
      source  = "1Password/onepassword"
      version = "1.4.0"
    }
  }
}

module "onepassword_item_minio" {
  source = "github.com/bjw-s/terraform-1password-item?ref=main"
  vault  = "Automation"
  item   = "minio"
}

provider "minio" {
  minio_server   = module.onepassword_item_minio.fields.server
  minio_user     = module.onepassword_item_minio.fields.username
  minio_password = module.onepassword_item_minio.fields.password
  minio_ssl      = true
}
