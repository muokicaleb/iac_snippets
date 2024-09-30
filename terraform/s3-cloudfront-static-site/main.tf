module "website" {
  source      = "./modules/aws"
  bucket_name = var.bucket_name
  domain_name = var.domain_name
}
