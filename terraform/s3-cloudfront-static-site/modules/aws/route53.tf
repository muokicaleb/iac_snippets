resource "aws_route53_zone" "domain_name_zone" {
  name          = var.domain_name
  comment       = "Managed by Terraform"
  force_destroy = false
}

resource "aws_route53_record" "domain_name_A" {
  zone_id = aws_route53_zone.domain_name_zone.zone_id
  name    = var.domain_name
  type    = "A"
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
  allow_overwrite = true
}

