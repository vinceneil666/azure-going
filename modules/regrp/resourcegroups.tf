resource "azurerm_resource_group" "prod" {
  name     = var.name
  location = var.location
}