# Terraform Azure Resource Group and Storage Account Module

This module creates an Azure Resource Group and a Storage Account within it.

## Usage

To use this module, include it in your main Terraform configuration file (`main.tf`) and provide the required variables.

```hcl
module "resource_group_storage" {
  source  = "leoleiden/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name              = "my-awesome-rg-from-module"
  location                         = "East US"
  storage_account_name             = "myawesomestorageacc12345"
  storage_account_tier             = "Standard"
  storage_account_replication_type = "LRS"
}