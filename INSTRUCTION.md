# Terraform Azure Resource Group and Storage Account Module

This Terraform module provides a straightforward way to deploy an Azure Resource Group and a Storage Account within that group.

## Usage

To use this module, add the following block to your Terraform configuration:

```terraform
module "resource_group_storage" {
  source  = "registry.terraform.io/<YOUR_GITHUB_USERNAME>/resource_group_storage/azurerm"
  version = "1.0.0" # Replace with your desired version

  # Required variables
  resource_group_name = "my-unique-resource-group"
  location            = "East US"
  storage_account_name = "myuniquestorageaccount12345" # Must be globally unique

  # Optional variables (will use default values if not specified)
  storage_account_tier             = "Standard"
  storage_account_replication_type = "LRS"
}

output "resource_group_id_from_module" {
  description = "The ID of the created resource group."
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_primary_access_key_from_module" {
  description = "The primary access key for the created storage account."
  value       = module.resource_group_storage.storage_account_primary_access_key
  sensitive   = true
}