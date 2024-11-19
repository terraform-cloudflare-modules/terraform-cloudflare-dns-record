output "hostname" {
  value       = cloudflare_record.custom_record.hostname
  description = "The FQDN of the record."
}

output "proxiable" {
  value       = cloudflare_record.custom_record.proxiable
  description = "Whether or not this record can be proxied."
}
