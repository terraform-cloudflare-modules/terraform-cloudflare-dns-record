data "cloudflare_zone" "custom_zone" {
  name = var.domain
}

locals {
  cf_zone_id = data.cloudflare_zone.custom_zone.id
}
