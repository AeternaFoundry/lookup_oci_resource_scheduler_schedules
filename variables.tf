variable "resource_scheduler_schedules_lookup" {
  description = <<EOT
Map of resource_scheduler_schedules_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - resource_id
    - schedule_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    resource_id    = optional(string)
    schedule_id    = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

