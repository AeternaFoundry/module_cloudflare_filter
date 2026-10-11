resource "cloudflare_filter" "filters" {
  for_each = var.filters

  body        = each.value.body
  zone_id     = each.value.zone_id
  description = each.value.description
  expression  = each.value.expression
  paused      = each.value.paused
  ref         = each.value.ref
}

