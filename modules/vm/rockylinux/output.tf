output "ubuntu-username" {
  value = azurerm_linux_virtual_machine.myterraformvm.admin_username
}
output "ubuntu-password" {
  value = azurerm_linux_virtual_machine.myterraformvm.admin_password
  sensitive = true
}