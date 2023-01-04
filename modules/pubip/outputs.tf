output "pubip" {
  value = azurerm_public_ip.emc-eus2-corporate-nic-01-pip.ip_address
}
output "pubipid" {
  value = azurerm_public_ip.emc-eus2-corporate-nic-01-pip.id
}