resource "google_compute_wire_group" "compute_wire_groups" {
  for_each = var.compute_wire_groups

  cross_site_network = each.value.cross_site_network
  name               = each.value.name
  admin_enabled      = each.value.admin_enabled
  deletion_policy    = each.value.deletion_policy
  description        = each.value.description
  project            = each.value.project

  dynamic "endpoints" {
    for_each = each.value.endpoints != null ? each.value.endpoints : []
    content {
      endpoint = endpoints.value.endpoint
      dynamic "interconnects" {
        for_each = endpoints.value.interconnects != null ? endpoints.value.interconnects : []
        content {
          interconnect      = interconnects.value.interconnect
          interconnect_name = interconnects.value.interconnect_name
          vlan_tags         = interconnects.value.vlan_tags
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

  dynamic "wire_properties" {
    for_each = each.value.wire_properties != null ? [each.value.wire_properties] : []
    content {
      bandwidth_allocation = wire_properties.value.bandwidth_allocation
      bandwidth_unmetered  = wire_properties.value.bandwidth_unmetered
      fault_response       = wire_properties.value.fault_response
    }
  }
}

