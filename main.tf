


data "azurerm_resource_group" "resource" {
  name = "rg-ussc-p-fuelhub"
}

resource "azurerm_powerbi_embedded" "powerbi" { 
  name                = var.powerbi_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource.name
  sku_name            = "A1"
  administrators      = ["imp-r8e3ps@bbaaviation.net"]
}
