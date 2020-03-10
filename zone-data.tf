data "cloudflare_zones" "root_domain" {
  filter {
    name   = var.domain
    status = "active"
    paused = false
  }
}
