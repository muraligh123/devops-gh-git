

resource "azurerm_virtual_network" "vnet1" {
  name                = local.virtual_network.name
  location            = local.location
  resource_group_name = local.resource_group_name
  address_space       = local.virtual_network.address_space
}   
  

  resource "azurerm_subnet" "web01" {
  name                 = "web01_subnet"
  resource_group_name  = azurerm_resource_group.nes_kyndryl.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [local.address_prefixes[0]]
  }

resource "azurerm_subnet" "web02" {
  name                 = "web02_subnet"
  resource_group_name  = azurerm_resource_group.nes_kyndryl.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [local.address_prefixes[1]]
  }

  

  
