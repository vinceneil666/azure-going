
# README

```
Creates a resource group, vnet with two subnets and a public ip address.
TFVARS files for DEV and PROD - apply with: terraform apply -var-file="./tfvars/prod(or dev).tfvars" -auto-approve 
```

```
Credentials stored in files, specified in provider.tf 
```

```
Base name set in tfvars are merged into names of all objects. A random ID is added to enable te re-use of modules in main.tf 
```

update: adds a ubuntu server with public ip

Added terraform.io run and store of statefiles.