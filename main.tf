resource "azurerm_storage_account" "testsa" {
  name                     = "${terraform.workspace}storage6789"
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
    owner = "someone"
  }
}
