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


  tags = {
    environment = "Production"
  }
}