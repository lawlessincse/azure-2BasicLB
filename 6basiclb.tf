resource "azurerm_lb" "R18_EUSPRODBLB" {
  location            = azurerm_resource_group.R1_EUSPRODRG.location
  name                = "EUSPRODBLB"
  resource_group_name = azurerm_resource_group.R1_EUSPRODRG.name
  sku                 = "Basic"

  frontend_ip_configuration {
    name = "EUSPRODBLB-FEPIP"
    public_ip_address_id = azurerm_public_ip.R10_EUSPRODBLB-PIP.id
  }
}

resource "azurerm_lb_backend_address_pool" "R19_BP1" {
  loadbalancer_id = azurerm_lb.R18_EUSPRODBLB.id
  name            = "EUSPRODWEBPOOL1"
}