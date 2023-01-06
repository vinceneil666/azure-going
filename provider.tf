terraform {
    cloud {
    organization = "wastelands"
    token = "vcovFKfD7y12jA.atlasv1.QWT67PzVzK5yNAZJ38nHDKkMKYeX8AF6LtPI95BfwZ1WXVzWk9MwycyXgZKKPFSROHk"
    workspaces {
      name = "azure-going"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.30.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

