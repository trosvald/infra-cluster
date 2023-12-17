module "s3_crunchy-pg" {
  source      = "./modules/minio"
  vault       = "Automation"
  bucket_name = "crunchydata-pg"
  # The OP provider converts the fields with toLower!
  user_secret_item = "s3_secret_key"
}
