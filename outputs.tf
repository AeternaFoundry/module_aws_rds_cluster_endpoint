output "rds_cluster_endpoints_id" {
  description = "Map of id values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rds_cluster_endpoints_arn" {
  description = "Map of arn values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "rds_cluster_endpoints_cluster_endpoint_identifier" {
  description = "Map of cluster_endpoint_identifier values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.cluster_endpoint_identifier if v.cluster_endpoint_identifier != null && length(v.cluster_endpoint_identifier) > 0 }
}
output "rds_cluster_endpoints_cluster_identifier" {
  description = "Map of cluster_identifier values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.cluster_identifier if v.cluster_identifier != null && length(v.cluster_identifier) > 0 }
}
output "rds_cluster_endpoints_custom_endpoint_type" {
  description = "Map of custom_endpoint_type values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.custom_endpoint_type if v.custom_endpoint_type != null && length(v.custom_endpoint_type) > 0 }
}
output "rds_cluster_endpoints_endpoint" {
  description = "Map of endpoint values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "rds_cluster_endpoints_excluded_members" {
  description = "Map of excluded_members values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.excluded_members if v.excluded_members != null && length(v.excluded_members) > 0 }
}
output "rds_cluster_endpoints_region" {
  description = "Map of region values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "rds_cluster_endpoints_static_members" {
  description = "Map of static_members values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.static_members if v.static_members != null && length(v.static_members) > 0 }
}
output "rds_cluster_endpoints_tags" {
  description = "Map of tags values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "rds_cluster_endpoints_tags_all" {
  description = "Map of tags_all values across all rds_cluster_endpoints, keyed the same as var.rds_cluster_endpoints"
  value       = { for k, v in aws_rds_cluster_endpoint.rds_cluster_endpoints : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

