data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

module "managed_disks" {
  source               = "../"  # Adjust the path as needed
  virtual_machine_name = var.virtual_machine_name
  tags                 = var.tags
  os_flavor            = var.os_flavor
  vm_data_disks        = var.vm_data_disks
}
