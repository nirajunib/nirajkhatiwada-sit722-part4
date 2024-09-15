resource "azurerm_container_registry" "sit722part4acr" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.sit722.name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}
