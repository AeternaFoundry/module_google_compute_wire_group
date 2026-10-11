variable "compute_wire_groups" {
  description = <<EOT
Map of compute_wire_groups, attributes below
Required:
    - cross_site_network
    - name
Optional:
    - admin_enabled
    - deletion_policy
    - description
    - project
    - endpoints (block):
        - endpoint (required)
        - interconnects (optional, block):
            - interconnect (optional)
            - interconnect_name (required)
            - vlan_tags (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - wire_properties (block):
        - bandwidth_allocation (required)
        - bandwidth_unmetered (optional)
        - fault_response (optional)
EOT

  type = map(object({
    cross_site_network = string
    name               = string
    admin_enabled      = optional(bool)
    deletion_policy    = optional(string)
    description        = optional(string)
    project            = optional(string)
    endpoints = optional(list(object({
      endpoint = string
      interconnects = optional(list(object({
        interconnect      = optional(string)
        interconnect_name = string
        vlan_tags         = optional(list(number))
      })))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    wire_properties = optional(object({
      bandwidth_allocation = string
      bandwidth_unmetered  = optional(number)
      fault_response       = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

