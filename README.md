
# README

Terraform code utilizing modules for creation of a vnet, two subnets, ubuntu server, public ip and a nsg. 

Uses terraform.io for storage of statefile.

Variables needs to be added to terraform.io for:

  subscription_id = var.subscription_id   ## Azure specific
  client_id       = var.client_id         ## Azure specific
  client_secret   = var.client_secret     ## Azure specific
  tenant_id       = var.tenant_id         ## Azure specific
  organization = var.org                  ## Terraform.io organization
  name = var.thename                      ## Terraform.io workspace
  
  var.basename is reused in all modules and added to the different names.
  
