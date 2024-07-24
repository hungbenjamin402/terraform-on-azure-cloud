# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

# Provider-1 Block for EastUS (Default Provider)
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false  
    }
  }
}

# Provider-2 Block for WestUS
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false  
    }
  }
  alias  = "provider2-WestUS"
}
