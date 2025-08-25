resource "azurerm_resource_group" "rg" {
  name     = "sumit"
  location = "westus"
}

resource "azurerm_storage_account" "stg" {
  depends_on            = [azurerm_resource_group.rg]
  name                  = "stg333"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  account_tier          = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "rg_container" {
  name                  = "sonustatefile123"
  storage_account_name  = azurerm_storage_account.stg.name
  container_access_type = "private"
}

resource "azurerm_resource_group" "rg1" {
  name     = "sumit1"
  location = "westus"
}

