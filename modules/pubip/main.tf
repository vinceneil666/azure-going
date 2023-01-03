#Create Public IP Address
resource "azurerm_public_ip" "emc-eus2-corporate-nic-01-pip" {
  name                = "${var.name}-rnd-${random_id.server.hex}-pubip"
  location            = var.location
  resource_group_name = var.resgrpname
  allocation_method   = "Static"
  sku = "Standard"
}
resource "random_id" "server" {
  keepers = {
    wildcards = var.wildcards
  }
  byte_length = 4
}