terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.27.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = file("../subscrip.txt")
  client_id       = file("../clientid.txt")
  client_secret   = file("../secret.txt")
  tenant_id       = file("../tennan.txt")
}