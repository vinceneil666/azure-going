resource   "azurerm_linux_virtual_machine"   "myterraformvm"   {
  name                    =   var.name
  location                =   var.location
  resource_group_name     =   var.resgrpname
  network_interface_ids   =   azurerm_network_interface.azurevm1nic.id
  size                    =   "Standard_B1s"
  computer_name           =   "linuxvm"
  admin_username          =   "hiteshj"
  admin_password          =   "securepassword!"

  source_image_reference   {
       publisher = "Canonical"
       offer     = "UbuntuServer"
       sku       = "20.04-LTS"
       version   = "latest"
  }

  os_disk   {
    caching             =   "ReadWrite"
    storage_account_type   = "Standard_LRS"
  }
}
resource   "azurerm_network_interface"   "azurevm1nic"   {
  name   =   "azurevm1-nic"
  location   =   var.location
  resource_group_name   =   var.resgrpname

  ip_configuration   {
    name   =   "ipconfig1"
    subnet_id   =   azurerm_subnet.frontendsubnet.id
    private_ip_address_allocation   =   "Dynamic"
    public_ip_address_id   =   var.pubipid
  }
}