resource "azurerm_data_factory_pipeline" "pl_without_parameter_type" {
  name                = "pl_without_parameter_type"
  resource_group_name = var.resource_group_name
  data_factory_name   = var.data_factory_name
  parameters = {
    param1 = "val 1"
    param2 = "val 2"
  }

  activities_json = <<JSON
[
    {
        "name": "Append variable1",
        "type": "AppendVariable",
        "dependsOn": [],
        "userProperties": [],
        "typeProperties": {
            "variableName": "bob",
            "value": "something"
        }
    }
]
  JSON
}


