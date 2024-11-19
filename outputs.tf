output "hostname" {
  value       = cloudflare_record.current.hostname
  description = "The FQDN of the record."
}

output "proxiable" {
  value       = cloudflare_record.current.proxied
  description = "Whether or not this record will be proxied."
}
