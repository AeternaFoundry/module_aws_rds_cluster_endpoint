variable "rds_cluster_endpoints" {
  description = <<EOT
Map of rds_cluster_endpoints, attributes below
Required:
    - cluster_endpoint_identifier
    - cluster_identifier
    - custom_endpoint_type
Optional:
    - excluded_members
    - region
    - static_members
    - tags
    - tags_all
EOT

  type = map(object({
    cluster_endpoint_identifier = string
    cluster_identifier          = string
    custom_endpoint_type        = string
    excluded_members            = optional(set(string))
    region                      = optional(string)
    static_members              = optional(set(string))
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.rds_cluster_endpoints : (
        contains(["READER", "ANY"], v.custom_endpoint_type)
      )
    ])
    error_message = "must be one of: READER, ANY"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

