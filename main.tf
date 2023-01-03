#
# Creates a resource group using the set basename.
#
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

/*
module "nic" {
  depends_on = [
    module.vnet-01.sub1
  ]
  source = "./modules/nic"
  location = var.location
  name = var.basename
  pubip = var.pubip
  subnetid = module.vnet-01.sub1-id-1
}
*/