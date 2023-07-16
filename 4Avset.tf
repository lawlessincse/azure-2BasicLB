resource "azurerm_availability_set" "R15_EUSPRODAVSET" {
  location                     = azurerm_resource_group.R1_EUSPRODRG.location
  name                         = "EUSPRODAVSET"
  resource_group_name          = azurerm_resource_group.R1_EUSPRODRG.name
  platform_fault_domain_count  = "3"
  platform_update_domain_count = "5"
}