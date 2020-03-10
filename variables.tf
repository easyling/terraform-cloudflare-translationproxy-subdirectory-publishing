variable "cloudflare_email" {
  description = "Cloudflare account email"
  type        = string
}
variable "cloudflare_api_key" {
  description = "Cloudflare account key"
  type        = string
}
variable "domain" {
  description = "The domain whose subdirectory the site will be published under. This is used to get the zone data for making the changes"
  type        = string
}
variable "prefix_to_locale" {
  description = "Map of path prefixes to their corresponding target locales. The languages MUST be provided as two-by-two letter locales."
  type        = map(string)
}
variable "project" {
  description = "The project ID"
  type        = string
}
variable "app_domain" {
  description = "App domain provided by LSP"
  type        = string
}
