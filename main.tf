#
# Creates a resource group using the set basename.
module "resgrp-01" {
  source = "./modules/regrp"
  location = var.location
  name = "${var.basename}-resgrp"
}
#
# Creates a VNET and two subnets, using the set basename.
#
module "vnet-01" {
  source = "./modules/vnet"
  location = var.location
  name = var.basename
  resgrpname = module.resgrp-01.resgrp-name
  nsgid = module.nsg-01.nsgid
}
#
# Creates a Public IP using the set basename.
#
module "public-ip-address-01" {
  source = "./modules/pubip"
  location = var.location
  name = var.basename
  resgrpname = module.resgrp-01.resgrp-name
}


#
# Creates a Linux server using the set basename, with public ip
#
module "linux-01"{
  source = "./modules/vm/rockylinux"
  location = var.location
  name = var.basename
  pubipid = module.public-ip-address-01.pubipid
  frontsubid = module.vnet-01.sub1-id-1
  resgrpname = module.resgrp-01.resgrp-name
}
#
# Creates a NSG, allowing ssh
#
module "nsg-01" {
  source = "./modules/nsg"
  location = var.location
  name = var.basename
  resgrpname = module.resgrp-01.resgrp-name
}
