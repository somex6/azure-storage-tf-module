variable "environment" {
  description = "The environment either Production or Development"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where the resource will be created"
  type        = string
}

variable "storage_account_name" {
  description = "The name of storage account"
  type        = string
}