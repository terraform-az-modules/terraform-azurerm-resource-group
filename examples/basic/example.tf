provider "azurerm" {
  features {}
}

module "resource-group" {
  source = "../../"
}
