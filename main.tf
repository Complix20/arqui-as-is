provider "local" {}

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
  db_type = "SQL Server 2008 R2"
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

module "crm" {
  source = "./modules/servers"
  name   = "Microsoft Dynamics CRM Server"
  cpu    = 4
  ram    = 96
  storage = {
    type = "Local"
    size = 1000
  }
  os = "Windows Server 2012 R2"
}

module "network" {
  source          = "./modules/network"
  mpls_bandwidth  = "5Mbps"
  vpn_connections = ["Supplier VPN"]
  internet_speed  = "60Mbps"
}

module "backup" {
  source = "./modules/servers"
  name   = "Backup Server"
  cpu    = 24
  ram    = 128
  storage = {
    type = "RAID5"
    size = 30000
  }
  os = "Red Hat 7.9"
}
