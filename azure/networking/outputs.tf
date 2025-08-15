output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  value       = azurerm_resource_group.rg.location
}

output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
  value       = azurerm_virtual_network.vnet.address_space
}

output "subnet_id" {
  value       = azurerm_subnet.snet.id
}

output "subnet_name" {
  value       = azurerm_subnet.snet.name
}

output "subnet_address_prefixes" {
  value       = azurerm_subnet.snet.address_prefixes
}
