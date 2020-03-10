provider "cloudflare" {
  version = "~> 2.0"
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

resource "cloudflare_page_rule" "translations" {
  for_each = var.prefix_to_locale
  target   = each.key
  zone_id  = lookup(data.cloudflare_zones.root_domain.zones[0], "id")
  actions {
    resolve_override         = "ghs.googlehosted.com"
    host_header_override     = "${each.value}.${var.project}.${var.app_domain}"
    automatic_https_rewrites = "off"
    always_use_https         = "off"
    true_client_ip_header    = "on"
  }
}
