terraform {
  required_version = ">= 1.0"
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.3.7"
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

provider "databricks" {
  azure_subscription_id = ""
  azure_client_secret   = ""
  azure_client_id       = ""
  azure_tenant_id       = ""
}

resource "databricks_notebook" "deploy_databricks_notebook_raw_pii_to_raw_shared" {
  content_base64 = base64encode(templatefile(abspath("${path.module}/templates/test_file.py"), {
  }))
  path     = var.notebook_path
  language = "PYTHON"
}