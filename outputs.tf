output "id" {
  value = azurerm_lb.tsp2-ilb.id
}

output "name" {
  value = azurerm_lb.tsp2-ilb.name
}

output "private_ip" {
  value = azurerm_lb.tsp2-ilb.private_ip_address
}

output "subnet_id" {
  value = azurerm_lb.tsp2-ilb.frontend_ip_configuration[0]
}