resource "azurerm_resource_group" "rg" {
  name     = "rg-ibrahim-unique"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-ibrahim"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-ibrahim"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name

  address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_resource_group" "example" {
  name     = "api-rg-pro"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "api-appserviceplan-pro23"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_linux_web_app" "ibrahim1234552" {
  name                = "ibrahim-webapp-unique-12345"  
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_app_service_plan.app_service_plan.id

  site_config {}
}


resource "azurerm_mssql_server" "my_unique_sql_server" {
  name                         = "sqlserver-ibrahim"  
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "sqladmin"  
  administrator_login_password = "Mohamoud12345"  
}

resource "azurerm_mssql_database" "my_unique_sql_database" {
  name                = "myuniquedatabaseibrahim"  
  server_id           = azurerm_mssql_server.my_unique_sql_server.id

}

resource "azurerm_key_vault" "my_unique_key_vault" {
  name                = "myuniquekeyvaultibrahim"  
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

sku_name = "standard"
tenant_id = var.tenant_id
  }

resource "azurerm_network_security_group" "my_unique_nsg" {
  name                = "myUniqueNSG"
  location            = azurerm_resource_group.rg.location  # Use the correct resource group reference
  resource_group_name = azurerm_resource_group.rg.name      # Use the correct resource group reference

  security_rule {
    name                       = "AllowHTTP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix  = "*"
  }

  security_rule {
    name                       = "AllowHTTPS"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix  = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "my_unique_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.subnet.id  
  network_security_group_id  = azurerm_network_security_group.my_unique_nsg.id
}
