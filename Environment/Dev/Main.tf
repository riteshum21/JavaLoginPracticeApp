module "rg" {
  source = "../../Module/RG"
  rg     = var.rg
}


module "network" {
  depends_on = [module.rg]
  source     = "../../Module/Networks"
  network    = var.network
}

module "PIP" {
  depends_on = [module.rg]
  source     = "../../Module/PIP"
  PIP        = var.PIP
}


module "sql_server" {
  depends_on = [module.rg]
  source     = "../../Module/SQL_Server"
  sql_server = var.sql_server
}

module "sqldb" {
  depends_on = [ module.sql_server ]
  source = "../../Module/SQL_Database"
  my_sql = var.my_sql
 }


# module "KV" {
#   depends_on = [module.rg]
#   source     = "../../Module/KeyVault"
#   keyvault   = var.keyvault
# }

# module "KeyVault_Secrate" {
#   depends_on = [ module.KV, module.rg ]
#   source = "../../Module/KeyVault_Secrate"
#   KVS = var.KVS

# }



module "VM" {
  depends_on = [ module.rg, module.PIP, module.network ]
  source = "../../Module/VM2"
  vm = var.vm
}