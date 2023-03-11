module "s3_bucket" {
  source  = "app.terraform.io/chrip-cert-org/s3-bucket/aws"
  version = "2.8.0"

  bucket = "${var.prefix}-${var.bucket_prefix}-my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

}