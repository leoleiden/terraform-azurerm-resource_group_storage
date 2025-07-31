output "resource_group_id" {
  description = "The ID of the resource group."
  value       = azurerm_resource_group.main.id
}

output "storage_account_primary_access_key" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.main.primary_access_key
  sensitive   = true
}