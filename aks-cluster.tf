resource "azurerm_resource_group" "default" {
  name = "${local.resource_group_name}"
  location = local.location.name
  tags = local.tags
}

resource "azurerm_virtual_network" "default" {
  name = "${local.vnet.name}"
  location = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name

  address_space = "${local.vnet.address}"
  tags = local.tags
}

resource "azurerm_subnet" "default" {
  name = "${local.subnet.name}"
  resource_group_name  = azurerm_resource_group.default.name

  virtual_network_name = azurerm_virtual_network.default.name
  address_prefixes = "${local.subnet.address}"
}

resource "azurerm_kubernetes_cluster" "default" {
  name = "${local.aks.name}"
  location = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name

  dns_prefix = "${local.aks.name}-k8s"

  default_node_pool {
    name = "default"
    node_count = 2
    vm_size = "${local.aks.vm_size}"
    //os_disk_size_gb = 30
    vnet_subnet_id = azurerm_subnet.default.id
  }

  network_profile {
    network_plugin = "azure"
    //network_policy = "azure"
    service_cidr = "${local.aks.service_cidr}"
    dns_service_ip = "${local.aks.dns_service_ip}"
    docker_bridge_cidr = "${local.aks.docker_bridge_cidr}"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}