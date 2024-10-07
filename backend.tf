terraform {
  backend "azurerm" {
    resource_group_name  = "Appservic"  
    storage_account_name = "cloudstorage1000"                      
    container_name       = "cloud"                       
    key                  = "prod.terraform.tfstate"        
  }
}
