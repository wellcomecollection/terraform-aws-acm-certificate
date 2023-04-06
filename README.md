# terraform-aws-acm-certificate

This module creates a certificate in AWS Certificate Manager (ACM).

It also creates the [DNS validation] records in Route 53, which proves that we own the domain for which we're creating the certificate.

[DNS validation]: https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html



## Example usage

```hcl
module "cert" {
  source = "github.com/wellcomecollection/terraform-aws-acm-certificate?ref=v1.0.0"

  domain_name = "iiif.wellcomecollection.org"

  subject_alternative_names = [
    "iiif-test.wellcomecollection.org",
    "iiif-prod.wellcomecollection.org",
    "iiif-stage.wellcomecollection.org",
  ]

  zone_id = "Z0902614YH73JBCZG1MA"

  # The `aws.dns` provider should be a provider with permission to modify
  # DNS records in the `zone_id` Hosted Zone.
  providers = {
    aws.dns = aws.dns
  }
}
```
