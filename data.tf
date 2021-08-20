data "azurerm_client_config" "current" {
}

data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

data "azurerm_data_factory" "example" {
  name                = var.data_factory_name
  resource_group_name = data.azurerm_resource_group.example.name
}