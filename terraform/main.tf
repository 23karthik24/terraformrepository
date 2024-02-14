terraform {
  backend "azurerm" {
    resource_group_name  = "terra-karthik-rg"
    storage_account_name = "terrakarthik"
    container_name       = "tskarthik"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}