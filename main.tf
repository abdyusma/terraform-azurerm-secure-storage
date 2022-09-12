data "azurerm_resource_group" "existing_resource_group" {
  name = var.existing_resource_group_name
}

resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.existing_resource_group.name
  location                 = data.azurerm_resource_group.existing_resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  public_network_access_enabled = false
  shared_access_key_enabled     = false
}
