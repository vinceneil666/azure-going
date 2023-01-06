terraform {
    cloud {
    organization = "wastelands"
    token = "Yx9SVfsuJsz4sQ.atlasv1.z2mzbL31TBU1o3G2l0KWJRtWAOWvURzSTAg1603IM89GSVFgOZ1oeIUmTvRlJySyqjg"
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

