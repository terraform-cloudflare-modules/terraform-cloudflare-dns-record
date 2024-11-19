resource "cloudflare_dns_record" "custom_record" {
  zone_id = local.cf_zone_id
  type    = var.dns_record_type
  proxied = var.use_cf_proxy
  comment = var.comment

  name  = var.dns_record_name
  value = var.dns_record_value
}
