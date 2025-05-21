resource_group_name  = "example-resource-group"
virtual_machine_name = "example-vm"
os_flavor            = "linux"
tags = {
  Environment = "development"
  Project     = "example-project"
}

vm_data_disks = {
  disk1 = {
    idx       = 0
    data_disk = {
      storage_account_type = "Standard_LRS"
      disk_size_gb         = 1024
    }
  },
  disk2 = {
    idx       = 1
    data_disk = {
      storage_account_type = "Standard_LRS"
      disk_size_gb         = 512
    }
  }
}
