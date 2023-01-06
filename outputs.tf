
output "sudnet-1-id" {
  value = module.vnet-01.sub1-id-1
}
output "sudnet-2-id" {
  value = module.vnet-01.sub1-id-2
}
output "sudnet-1-name" {
  value = module.vnet-01.sub1-name-1
}
output "sudnet-2-name" {
  value = module.vnet-01.sub1-name-2
}
output "Resource-Group-Name" {
  value = module.resgrp-01.resgrp-name
}
output "user-ubuntu" {
  value = module.linux-01.ubuntu-username
}
output "passwd-ubuntu" {
  value = module.linux-01.ubuntu-password
}
