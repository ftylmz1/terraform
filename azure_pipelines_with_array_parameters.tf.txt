variable "required_tags" {
  type = map(object({
    type         = string
    defaultValue = list(string)
  }))
  default = {
    param3 = {
      type         = "Array"
      defaultValue = ["test1", "test2"]
    }
  }
}


resource "azurerm_data_factory_pipeline" "pl_pipeline_with_array_params_test_01" {
  name                = "pl_pipeline_with_array_params_test_01"
  resource_group_name = var.resource_group_name
  data_factory_name   = var.data_factory_name
  parameters          = var.required_tags

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


resource "azurerm_data_factory_pipeline" "pl_pipeline_with_array_params_test_02" {
  name                = "pl_pipeline_with_array_params_test_02"
  resource_group_name = var.resource_group_name
  data_factory_name   = var.data_factory_name
  parameters          = <<PARAMETERS
    {
            "param1": {
                "type": "String",
                "defaultValue": "val 1"
            },
            "param2": {
                "type": "String",
                "defaultValue": "val 2"
            },
            "param3": {
                "type": "array",
                "defaultValue": [
                    "item1",
                    "item2"
                ]
            }
        }
PARAMETERS

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


