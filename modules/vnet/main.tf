resource "azurerm_virtual_network" "example" {
 # name               = "${var.name}-vnet"      
  name                = "${var.name}-rnd-${random_id.vnet.hex}-vnet"
  location            = var.location
  resource_group_name = var.resgrpname
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
}
resource "azurerm_subnet" "sub1" {
  # name               = "${var.name}-subnet-1"
  name                 = "${var.name}-rnd-${random_id.vnet.hex}-subnet-1"
  resource_group_name  = var.resgrpname
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_subnet" "sub2" {
  # name               = "${var.name}-subnet-2"
  name                 = "${var.name}-rnd-${random_id.vnet.hex}-subnet-2"
  resource_group_name  = var.resgrpname
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = azurerm_subnet.sub1.id
  network_security_group_id = var.nsgid
}
resource "random_id" "vnet" {
  keepers = {
    wildcards = var.mildcards
  }
  byte_length = 4
}
