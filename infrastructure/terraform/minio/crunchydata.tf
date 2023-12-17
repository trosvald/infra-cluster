module "s3_crunchy-pg" {
  source      = "./modules/minio"
  vault       = "Automation"
  bucket_name = "crunchydata-pg"
  # The OP provider converts the fields with toLower!
  user_secret_item = "crunchy_s3_secret"
}
