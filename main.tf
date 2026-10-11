data "databricks_quality_monitors_v2" "quality_monitors_v2_lookup" {
  for_each = var.quality_monitors_v2_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

