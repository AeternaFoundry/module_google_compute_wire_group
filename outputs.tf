output "compute_wire_groups_id" {
  description = "Map of id values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no id are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_wire_groups_admin_enabled" {
  description = "Map of admin_enabled values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no admin_enabled are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.admin_enabled if v.admin_enabled != null }
}
output "compute_wire_groups_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_wire_groups_cross_site_network" {
  description = "Map of cross_site_network values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no cross_site_network are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.cross_site_network if v.cross_site_network != null && length(v.cross_site_network) > 0 }
}
output "compute_wire_groups_deletion_policy" {
  description = "Map of deletion_policy values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_wire_groups_description" {
  description = "Map of description values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no description are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_wire_groups_endpoints" {
  description = "Map of endpoints values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no endpoints are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "compute_wire_groups_name" {
  description = "Map of name values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no name are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_wire_groups_project" {
  description = "Map of project values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no project are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_wire_groups_topology" {
  description = "Map of topology values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no topology are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.topology if v.topology != null && length(v.topology) > 0 }
}
output "compute_wire_groups_wire_properties" {
  description = "Map of wire_properties values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no wire_properties are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => one(v.wire_properties) if v.wire_properties != null && length(v.wire_properties) > 0 }
}
output "compute_wire_groups_wires" {
  description = "Map of wires values across all compute_wire_groups, keyed the same as var.compute_wire_groups except keys with no wires are omitted"
  value       = { for k, v in google_compute_wire_group.compute_wire_groups : k => v.wires if v.wires != null && length(v.wires) > 0 }
}

