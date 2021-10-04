terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=2.46.0"
        }

        random = {
            source = "hashicorp/random"
            version = ">=2.2"
        }
      
    }
}
provider "azurerm" {
     features {}  

}

resource "azurerm_resource_group" "mura_bastion_rg" {
    name     = var.bastion_rg
    location = var.location 
}

resource "azurerm_public_ip" "mura_bastion_server_public_ip" {
    name                 = "bastion-public-ip"
    location             = var.location
    resource_group_name  = azurerm_resource_group.mura_bastion_rg.name
    allocation_method    =  "Static" 
    sku                  = "Standard"
}

resource "azurerm_bastion_host" "mura_bastion_host" {
    name                 = "mura-bastion-host"
    location             = var.location
    resource_group_name  = azurerm_resource_group.mura_bastion_rg.name
    
    ip_configuration {
        name      = "us2w"
        subnet_id = data.terraform_remote_state.web.outputs.bastion_host_subnet_us2w
        public_ip_address_id = azurerm_public_ip.mura_bastion_server_public_ip.id
    }

}