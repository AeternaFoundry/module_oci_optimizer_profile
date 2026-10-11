resource "oci_optimizer_profile" "optimizer_profiles" {
  for_each = var.optimizer_profiles

  compartment_id               = each.value.compartment_id
  description                  = each.value.description
  name                         = each.value.name
  aggregation_interval_in_days = each.value.aggregation_interval_in_days
  defined_tags                 = each.value.defined_tags
  freeform_tags                = each.value.freeform_tags

  levels_configuration {
    dynamic "items" {
      for_each = each.value.levels_configuration.items != null ? each.value.levels_configuration.items : []
      content {
        level             = items.value.level
        recommendation_id = items.value.recommendation_id
      }
    }
  }

  dynamic "target_compartments" {
    for_each = each.value.target_compartments != null ? [each.value.target_compartments] : []
    content {
      items = target_compartments.value.items
    }
  }

  dynamic "target_tags" {
    for_each = each.value.target_tags != null ? [each.value.target_tags] : []
    content {
      dynamic "items" {
        for_each = target_tags.value.items
        content {
          tag_definition_name = items.value.tag_definition_name
          tag_namespace_name  = items.value.tag_namespace_name
          tag_value_type      = items.value.tag_value_type
          tag_values          = items.value.tag_values
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

