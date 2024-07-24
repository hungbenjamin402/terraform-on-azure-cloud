# Resource Block
# Create a resource group
# Use "provider_name.alias" for multiple providers
resource "azurerm_resource_group" "myrg1" {
  # provider = azurerm.provider1-EastUS # provider_name.alias
  name     = "myrg-1"
  location = "East US"
}

# Create resource group in WestUS - Use "provider2-WestUS"
resource "azurerm_resource_group" "myrg2" {
  provider = azurerm.provider2-WestUS # provider_name.alias
  name     = "myrg-2"
  location = "West US"
}