terraform {
  required_version = ">= 1.0"
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.3.5"
    }
    azurerm = {
      version = "2.72.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
