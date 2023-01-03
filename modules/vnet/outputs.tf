output "vnet-name" {
  value = azurerm_virtual_network.example.name
}
output "vnet-id" {
  value = azurerm_virtual_network.example.id
}
output "sub1-id-1" {
  value = azurerm_subnet.sub1.id
}
output "sub1-id-2" {
  value = azurerm_subnet.sub2.id
}
output "sub1-name-1" {
  value = azurerm_subnet.sub1.name
}
output "sub1-name-2" {
  value = azurerm_subnet.sub2.name
}