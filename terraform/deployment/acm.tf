
resource "aws_acm_certificate" "domain_cert" {
  domain_name               = local.dns_name
  subject_alternative_names = var.alternative_names ? ["*.${local.dns_name}"] : []
  validation_method         = "DNS"

  tags = {
    Name            = local.dns_name
    iac_environment = var.environment
  }


  lifecycle {
    create_before_destroy = true
  }

  provider = aws.resource_account
}

resource "aws_route53_record" "domain_validation_records" {
  for_each = {
    for dvo in aws_acm_certificate.domain_cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.base_domain.id

  provider        = aws.root_account
}

resource "aws_acm_certificate_validation" "domain_cert_validation" {
  certificate_arn         = aws_acm_certificate.domain_cert.arn
  validation_record_fqdns = [for record in aws_route53_record.domain_validation_records: record.fqdn]
  provider = aws.resource_account
}
