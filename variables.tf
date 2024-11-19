variable "domain" {
  type        = string
  description = "The domain for which the DNS records should be altered."
}

variable "dns_record_name" {
  type        = string
  description = "The name of the name DNS record to be added."
}

variable "dns_record_value" {
  type        = string
  description = "The value of the name DNS record to be added."
}

variable "dns_record_type" {
  type        = string
  description = "The type of DNS record to be altered."
  default     = "A"
}

variable "use_cf_proxy" {
  type        = bool
  description = "Whether or not to enable proxying through Cloudflare's DNS network."
  default     = false
}

variable "comment" {
  type        = string
  description = "A comment to attach to the zone within the Cloudflare dashboard. Does not affect DNS responses."
  default     = null
}
