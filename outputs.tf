output "filters_id" {
  description = "Map of id values across all filters, keyed the same as var.filters except keys with no id are omitted"
  value       = { for k, v in cloudflare_filter.filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "filters_body" {
  description = "Map of body values across all filters, keyed the same as var.filters except keys with no body are omitted"
  value       = { for k, v in cloudflare_filter.filters : k => v.body if v.body != null && length(v.body) > 0 }
}
output "filters_description" {
  description = "Map of description values across all filters, keyed the same as var.filters except keys with no description are omitted"
  value       = { for k, v in cloudflare_filter.filters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "filters_expression" {
  description = "Map of expression values across all filters, keyed the same as var.filters except keys with no expression are omitted"
  value       = { for k, v in cloudflare_filter.filters : k => v.expression if v.expression != null && length(v.expression) > 0 }
}
output "filters_paused" {
  description = "Map of paused values across all filters, keyed the same as var.filters except keys with no paused are omitted"
  value       = { for k, v in cloudflare_filter.filters : k => v.paused if v.paused != null }
}
output "filters_ref" {
  description = "Map of ref values across all filters, keyed the same as var.filters except keys with no ref are omitted"
  value       = { for k, v in cloudflare_filter.filters : k => v.ref if v.ref != null && length(v.ref) > 0 }
}
output "filters_zone_id" {
  description = "Map of zone_id values across all filters, keyed the same as var.filters except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_filter.filters : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

