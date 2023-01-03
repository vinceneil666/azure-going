resource "azurerm_network_interface" "nic-001-sub1" {
  name                = "${var.name}-nic-001-sub1"
  location            = var.location
  resource_group_name = var.resgrpname

  ip_configuration {
    name                          = "corporate-webserver-vm-01-nic-ip"
    subnet_id                     = var.subnetid
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.pubip
  }
}