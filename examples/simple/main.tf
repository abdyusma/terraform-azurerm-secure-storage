provider "azurerm" {
  features {}
}

module "secure-storage" {
  source  = "abdyusma/secure-storage/azurerm"
  version = "0.1.0"

  existing_resource_group_name = "crayonmalaysia"
  storage_account_name         = "crayonmalaysia"
}
