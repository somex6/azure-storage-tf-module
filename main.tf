terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

locals {
  tags = {
    Environment = var.environment
  }
}

resource "azurerm_storage_account" "securestorage" {
  name                          = var.storage_account_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  account_tier                  = "Standard"
  account_replication_type      = var.environment == "production" ? "GRS" : "LRS"
  public_network_access_enabled = false

  tags = local.tags
}