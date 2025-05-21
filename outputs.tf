output "managed_disk_ids" {
  description = "Managed disk IDs"
  value       = [for disk in azurerm_managed_disk.data_disk : disk.id]
}

output "data_disk_attachment_ids" {
  description = "Data disk attachment IDs"
  value       = [for attachment in azurerm_virtual_machine_data_disk_attachment.data_disk : attachment.id]
}
