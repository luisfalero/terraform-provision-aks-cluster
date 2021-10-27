locals {
  subscription_id = var.subscription_id
  location = var.location
  application_code = var.application_code
  resource_group_name = "RSGR${upper(var.location.code)}${upper(var.application_code)}${upper(substr(var.environment, 0, 1))}01"
  vnet = {
    name = "vnet${lower(local.location.code)}${lower(local.application_code)}${lower(substr(local.environment, 0, 1))}01"
    address = ["${var.vnet.address}"]
  }
  subnet = {
    name = "subnet${lower(local.location.code)}${lower(local.application_code)}${lower(substr(local.environment, 0, 1))}01"
    address = ["${var.subnet.address}"]
  }
  aks = {
    name = "aks${lower(local.location.code)}${lower(local.application_code)}${lower(substr(local.environment, 0, 1))}01"
    service_cidr = "${var.aks.service_cidr}"
    dns_service_ip = "${var.aks.dns_service_ip}"
    docker_bridge_cidr = "${var.aks.docker_bridge_cidr}"
    vm_size = "${var.aks.vm_size}"
  }
  environment = var.environment
  tags = {
    environment = var.environment
    codApp = var.application_code
  }
}