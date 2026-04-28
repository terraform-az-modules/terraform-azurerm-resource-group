variables {
  name     = "test"
  location = "eastus"
}
provider "azurerm" {
  features {}
}

run "validate_module" {
  command = plan
}
