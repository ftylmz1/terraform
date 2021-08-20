output "client_id" {
  value = data.azurerm_client_config.current.client_id
}

output "subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}

output "cdata" {
  value = data.azurerm_client_config.current
}

output "resource_group" {
  value = data.azurerm_resource_group.example
}

output "data_factory" {
  value = data.azurerm_data_factory.example
}
