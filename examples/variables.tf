variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "virtual_machine_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "os_flavor" {
  description = "Operating system flavor (windows or linux)"
  type        = string
}

variable "vm_data_disks" {
  description = "Information about virtual machine data disks"
  type = map(object({
    idx       = number
    data_disk = object({
      storage_account_type = string
      disk_size_gb         = number
    })
  }))
}
