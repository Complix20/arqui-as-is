module "legacy_applications" {
  source = "./modules/servers"
  name   = "Legacy Applications Server"
  cpu    = 4
  ram    = 6
  storage = {
    type = "RAID1"
    size = 300
  }
  os      = "Windows Server 2012 R2"
  db_type = "SQL Server 2008 R2" # Define el tipo de base de datos
}

module "oracle_erp" {
  source = "./modules/servers"
  name   = "Oracle ERP Server"
  cpu    = 32
  ram    = 128
  storage = {
    type = "Local"
    size = 2000
  }
  os      = "Red Hat 7.9"
  db_type = "Oracle 12.2"
}
