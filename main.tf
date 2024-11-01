#Retrive details for subnet to which private endpoint will be deployed
data "azurerm_subnet" "tsp_pe_subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.vnet_rg
  virtual_network_name = var.vnet_name
}

resource "azurerm_lb" "tsp2-ilb" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"

  frontend_ip_configuration {
    name                          = var.name
    zones                         = ["1", "3"]
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = data.azurerm_subnet.tsp_pe_subnet.id
  }
}