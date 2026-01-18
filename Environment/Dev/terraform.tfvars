# keyvault = {
#   KV1 = {
#     name                        = "prskv125"
#     location                    = "japaneast"
#     resource_group_name         = "ram"
#     enabled_for_disk_encryption = true
#     soft_delete_retention_days  = 7
#     purge_protection_enabled    = false

#     sku_name = "standard"

#     key_permissions = [
#       "Get", "Create", "List",
#     ]
#     secret_permissions = [
#       "Get", "Set", "List", "Delete", "Recover", "Backup"
#     ]
#     storage_permissions = [
#       "Get", "List",
#     ]
#   }

# }
# KVS = {
#   vm1 = {
#     username_name  = "vm1-username"
#     username_value = "fvmuser"
#     password_name  = "vm1-password"
#     password_value = "Factor@666666"
#   }

#   vm2 = {
#     username_name  = "vm2-username"
#     username_value = "bvmuser"
#     password_name  = "vm2-password"
#     password_value = "Factor@555555"
#   }
# }


network = {
  network1 = {
    name                = "vnetrs"
    location            = "japaneast"
    resource_group_name = "ram"
    address_space       = ["10.0.0.0/16"]
    subnet = {
      sn1 = {
        name = "ram"
        cidr = ["10.0.0.0/24"]
      }
      sn2 = {
        name = "AzureBastionSubnet"
        cidr = ["10.0.1.0/24"]
      }
      sn4 = {
        name = "AzureFirewallSubnet"
        cidr = ["10.0.3.0/24"]
      }
      sn3 = {
        name = "shyam"
        cidr = ["10.0.2.0/24"]
      }
    }
  }
}



PIP = {
  # pip1 = {
  #   name                = "PIP"
  #   resource_group_name = "ram"
  #   location            = "japaneast"
  #   allocation_method   = "Static"

  #   tags = {
  #     environment = "Production"
  #   }
  # }
  pip2 = {
    name                = "PIP2"
    resource_group_name = "ram"
    location            = "japaneast"
    allocation_method   = "Static"

    tags = {
      environment = "Production"
    }
  }
  pip3 = {
    name                = "PIP3"
    resource_group_name = "ram"
    location            = "japaneast"
    allocation_method   = "Static"

    tags = {
      environment = "Production"
    }
  }
}
rg = {
  rg1 = {
    name       = "ram"
    location   = "Japaneast"
    managed_by = "ram"
    tags = {
      created_for = "test"
      env         = "dev"

    }

  }
  # rg2 = {
  #   name     = "raghu"
  #   location = "Japanwest"
  #   tags = {
  #     created_for = "test"
  #     env         = "dev"

  #   }
  # }
  # rg3 = {
  #   name       = "shyam"
  #   location   = "Centralindia"
  #   managed_by = "shyam"
  # }
}


my_sql = {
  sqldb = {

    name         = "sqldb21"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 2
    sku_name     = "Basic"
    enclave_type = "Default"
  }
}



sql_server = {
  server1 = {
    name                         = "rssqls21"
    resource_group_name          = "ram"
    location                     = "japaneast"
    version                      = "12.0"
    administrator_login          = "sqlrs"
    administrator_login_password = "Factor@666666"
    tags = {
      environment = "dev"
    }

  }
}

vm = {
  vm1 = {
    vm_name             = "f-vm"
    location            = "japaneast"
    resource_group_name = "ram"

    virtual_network_name = "vnetrs"
    subnet_name          = "ram"
    public_ip_name       = "PIP2"
    nic_name             = "f-nic"

    size     = "Standard_D2s_v3"
    admin_username = "fvm"
    admin_password = "Factor@666666"


    script_name       = "nginx.sh"
    pw_authentication = false

    os_name              = "osdisk1"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  vm2 = {
    vm_name             = "b-vm"
    location            = "Japaneast"
    resource_group_name = "ram"

    virtual_network_name = "vnetrs"
    subnet_name          = "shyam"
    public_ip_name       = "PIP3"
    nic_name             = "b-nic"

    size     = "Standard_D2s_v3"
    admin_username = "fvm"
    admin_password = "Factor@555555"

    script_name       = "nginx.sh"
    pw_authentication = false

    os_name              = "osdisk2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}





