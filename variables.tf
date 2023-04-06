variable "domain_name" {
  description = "The domain name to create the certificate for, e.g. example.com"
  type        = string
}

variable "subject_alternative_names" {
  description = "Any other domain names to create with the certificate. This is usually additional subdomains, e.g. prod.example.com or stage.example.com"
  type        = list(string)
  default     = []
}

variable "zone_id" {
  description = "The ID of the Route 53 Hosted Zone for this domain name, where the domain validation records should be created"
  type        = string
}
