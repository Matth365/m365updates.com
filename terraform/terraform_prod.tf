provider "azurerm" {
    version = ">= 2.13.0"
    features {}
}

terraform {
    backend "azurerm" {
        resource_group_name     = "RG_TF_PROD_M365updates"
        storage_account_name    = "satfprodm365updatescom"
        container_name          = "terraform_prod.tfstate"
        }
    }

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "resourcegroup" {
    name = "rg_prod_m365updates"
    location = "westeurope"
}

