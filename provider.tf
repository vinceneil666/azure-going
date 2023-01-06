terraform {
    cloud {
    organization = "wastelands"
    token = "NW0foLdyceqe3g.atlasv1.UKL92qucyPVcDcUQdUyK98BAQJXzy3kVNFoHyM8CV4y6bazSz2Wzv6cA4nuDaT0nU20"
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

