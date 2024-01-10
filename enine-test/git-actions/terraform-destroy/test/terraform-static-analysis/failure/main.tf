provider "azurerm" {

}

resource "azurerm_resource_group" "example" {
  name     = "example-test"
  location = "East US"
}

resource "azurerm_network_security_group" "example" {
  name                = "nsg_checkov_test_failure"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "22"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}