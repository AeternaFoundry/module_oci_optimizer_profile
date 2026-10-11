output "optimizer_profiles_id" {
  description = "Map of id values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no id are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "optimizer_profiles_aggregation_interval_in_days" {
  description = "Map of aggregation_interval_in_days values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no aggregation_interval_in_days are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.aggregation_interval_in_days if v.aggregation_interval_in_days != null }
}
output "optimizer_profiles_compartment_id" {
  description = "Map of compartment_id values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no compartment_id are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "optimizer_profiles_defined_tags" {
  description = "Map of defined_tags values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no defined_tags are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "optimizer_profiles_description" {
  description = "Map of description values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no description are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "optimizer_profiles_freeform_tags" {
  description = "Map of freeform_tags values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "optimizer_profiles_levels_configuration" {
  description = "Map of levels_configuration values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no levels_configuration are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => one(v.levels_configuration) if v.levels_configuration != null && length(v.levels_configuration) > 0 }
}
output "optimizer_profiles_name" {
  description = "Map of name values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no name are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "optimizer_profiles_state" {
  description = "Map of state values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no state are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.state if v.state != null && length(v.state) > 0 }
}
output "optimizer_profiles_system_tags" {
  description = "Map of system_tags values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no system_tags are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "optimizer_profiles_target_compartments" {
  description = "Map of target_compartments values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no target_compartments are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => one(v.target_compartments) if v.target_compartments != null && length(v.target_compartments) > 0 }
}
output "optimizer_profiles_target_tags" {
  description = "Map of target_tags values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no target_tags are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => one(v.target_tags) if v.target_tags != null && length(v.target_tags) > 0 }
}
output "optimizer_profiles_time_created" {
  description = "Map of time_created values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no time_created are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "optimizer_profiles_time_updated" {
  description = "Map of time_updated values across all optimizer_profiles, keyed the same as var.optimizer_profiles except keys with no time_updated are omitted"
  value       = { for k, v in oci_optimizer_profile.optimizer_profiles : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

