
subscription_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx"
location = {
    code = "WU2"
    name = "West US 2"
}
application_code = "LUIS"
environment = "DESA"
vnet = {
    address = "10.0.0.0/16"
}
subnet = {
    address = "10.0.1.0/24"
}
aks = {
    service_cidr = "10.0.2.0/24"
    dns_service_ip = "10.0.2.10"
    docker_bridge_cidr = "172.17.0.1/16"
    vm_size = "Standard_D2_v2"
}