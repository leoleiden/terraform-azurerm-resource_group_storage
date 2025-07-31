variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Location of the resource group and storage account."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account."
  type        = string
}

variable "storage_account_tier" {
  description = "The tier of the storage account (e.g., Standard, Premium)."
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account (e.g., LRS, GRS)."
  type        = string
  default     = "LRS"
}