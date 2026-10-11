variable "filters" {
  description = <<EOT
Map of filters, attributes below
Required:
    - body
    - zone_id
Optional:
    - description
    - expression
    - paused
    - ref
EOT

  type = map(object({
    body = list(object({
      description = optional(string)
      expression  = optional(string)
      paused      = optional(bool)
      ref         = optional(string)
    }))
    zone_id     = string
    description = optional(string)
    expression  = optional(string)
    paused      = optional(bool)
    ref         = optional(string)
  }))
}

