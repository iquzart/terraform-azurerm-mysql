# Terraform Azurerm MySQL
A terraform module to create a basic MySQL on Azure database server including a database. Numeral input options can be specified if desired, including setting a resource lock or not.


## Usage
```
module "my_mysql" {
  source            = "azurerm/mysql/"
  version           = "0.1.0"
  location          = "westeurope"
  db_server_name    = "mydb"
  tags {
      Project       = "some project"
      Contact       = "Some Business Contact Person"
  }
}
```

## Variables

### resource_group_name 
Default resource group name that the database will be created in.
default     = mysqlResourceGroup


### location 
Specifies the supported Azure location where the resource exists.
default = North Central US


### tags 
A mapping of tags to assign to the resource. For instance business stakeholders, or who pays for it?
default = 
    Environment = Development
    BU = Some BU
  


### db_server_name 
The name of the MySQL server to be created.
default = mydevtest-mysql-db-01

### db_name 
The name of the database to be created.
default = wp_db1x17s2a


### admin_username 
The administrator username of MySQL Server.
default = mysqladmin


### password 
The administrator password of the MySQL Server.
default = #!SQLP@55


### firewall_rule_name 
Firewall rule name.
default     = public

### start_ip_address 
Defines the start IP address used in your database firewall rule.
default     = 0.0.0.0


### end_ip_address 
Defines the end IP address used in your database firewall rule.
default     = 255.255.255.255


### db_version 
Specifies the version of MySQL to use. Valid values are 5.6 and 5.7.
default     = 5.7


### ssl_enforcement 
Specifies if SSL should be enforced on connections. Possible values are Enforced and Disabled.
default     = Enabled


### sku_name 
Specifies the SKU Name for this MySQL Server. The name of the SKU, follows the tier + family + cores pattern (e.g. B_Gen4_1, GP_Gen5_8).
default     = B_Gen5_2


### sku_capacity 
The scale up/out capacity, representing server's compute units.
default     = 2


### sku_tier 
The tier of the particular SKU. Possible values are Basic, GeneralPurpose, and MemoryOptimized.
default     = Basic


### sku_family 
The family of hardware Gen4 or Gen5, before selecting your family check the product documentation for availability in your region.
default     = Gen5


### storage_mb 
Max storage allowed for a server. Possible values are between 5120 MB(5GB) and 1048576 MB(1TB) for the Basic SKU and between 5120 MB(5GB) and 4194304 MB(4TB) for General Purpose/Memory Optimized SKUs.
default     = 5120


### backup_retention_days 
Backup retention days for the server, supported values are between 7 and 35 days.
default     = 7


### geo_redundant_backup 
Enable Geo-redundant or not for server backup. Valid values for this property are Enabled or Disabled, not supported for the basic tier.
default     = Disabled


### charset 
Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset.
default     = utf8


### collation 
Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation.
default     = utf8_unicode_ci

