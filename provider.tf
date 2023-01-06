terraform {
    cloud {
    organization = "wastelands"
    token = "CNl6vEp8KKg5Wg.atlasv1.grp2BK4G8dwiZV1DG4eiPjHVa8VU1lCJ22Vjdbp1PEySy8vunvIdE2kChS1BMr4IPQ0"
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

