resource "azurerm_lb" "tsp2-ilb" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"

  frontend_ip_configuration {
    name                          = var.name
    zones                         = ["1", "3"]
    private_ip_address_allocation = "Dynamic"
  }
}