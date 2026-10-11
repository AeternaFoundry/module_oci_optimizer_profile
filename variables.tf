variable "optimizer_profiles" {
  description = <<EOT
Map of optimizer_profiles, attributes below
Required:
    - compartment_id
    - description
    - name
    - levels_configuration (block):
        - items (optional, block):
            - level (optional)
            - recommendation_id (optional)
Optional:
    - aggregation_interval_in_days
    - defined_tags
    - freeform_tags
    - target_compartments (block):
        - items (required)
    - target_tags (block):
        - items (required, block):
            - tag_definition_name (required)
            - tag_namespace_name (required)
            - tag_value_type (required)
            - tag_values (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id               = string
    description                  = string
    name                         = string
    aggregation_interval_in_days = optional(number)
    defined_tags                 = optional(map(string))
    freeform_tags                = optional(map(string))
    levels_configuration = object({
      items = optional(list(object({
        level             = optional(string)
        recommendation_id = optional(string)
      })))
    })
    target_compartments = optional(object({
      items = list(string)
    }))
    target_tags = optional(object({
      items = list(object({
        tag_definition_name = string
        tag_namespace_name  = string
        tag_value_type      = string
        tag_values          = optional(list(string))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.optimizer_profiles : (
        v.target_tags == null || (length(v.target_tags.items) >= 1)
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
}

