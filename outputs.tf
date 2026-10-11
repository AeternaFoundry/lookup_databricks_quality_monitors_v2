output "quality_monitors_v2_lookup_page_size" {
  description = "Map of page_size values across all quality_monitors_v2_lookup, keyed the same as var.quality_monitors_v2_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_quality_monitors_v2.quality_monitors_v2_lookup : k => v.page_size if v.page_size != null }
}
output "quality_monitors_v2_lookup_provider_config" {
  description = "Map of provider_config values across all quality_monitors_v2_lookup, keyed the same as var.quality_monitors_v2_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_quality_monitors_v2.quality_monitors_v2_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "quality_monitors_v2_lookup_quality_monitors" {
  description = "Map of quality_monitors values across all quality_monitors_v2_lookup, keyed the same as var.quality_monitors_v2_lookup except keys with no quality_monitors are omitted"
  value       = { for k, v in data.databricks_quality_monitors_v2.quality_monitors_v2_lookup : k => v.quality_monitors if v.quality_monitors != null && length(v.quality_monitors) > 0 }
}

