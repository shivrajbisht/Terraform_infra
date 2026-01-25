data "azurerm_network_interface" "nic_data" {
    for_each = var.nic.appgateway
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}
data "azurerm_application_gateway_backend_address_pool" "aapgatway_data" {
    for_each = var.nic_aapgatway
  name            = each.value.aapgatway_backendpool_name
  application_gateway_id = data.azurerm_application_gateway.appgateway_data[each.key].id
}
data "azurerm_application_gateway" "appgateway_data" {
 for_each = var.nic_aapgatway
  name                = each.value.appgateway_name
  resource_group_name = each.value.rg_name
}