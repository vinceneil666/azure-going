resource "azurerm_network_security_group" "example" {
  name                = "${var.name}-rnd-${random_id.server.hex}-nsg"
  location            = var.location
  resource_group_name = var.resgrpname

  security_rule {
    name                       = "ssh-access"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
resource "random_id" "server" {
  keepers = {
    wildcards = var.wildcards
  }
  byte_length = 4
}
