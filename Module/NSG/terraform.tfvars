NSG = {
  nsg1 = {

    name                = "newnsg"
    location            = "japaneast"
    resource_group_name = "ram"
  }

  security_rule = {
    rule1 = {
      name                       = "test123"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}



  
