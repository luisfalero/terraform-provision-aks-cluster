output "resource_group_id" {
  value = azurerm_resource_group.default.id
}

output "resource_group_name" {
  value = azurerm_resource_group.default.name
}

output "azurerm_virtual_network_id" {
  value = azurerm_virtual_network.default.id
}

output "azurerm_virtual_network_name" {
  value = azurerm_virtual_network.default.name
}

output "azurerm_sub_network_id" {
  value = azurerm_subnet.default.id
}

output "azurerm_sub_network_name" {
  value = azurerm_subnet.default.name
}

output "kubernetes_cluster_id" {
  value = azurerm_kubernetes_cluster.default.id
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}