variable "resource_group_name" {
  description = "Default resource group name that the database will be created in."
  default     = "mysqlResourceGroup"
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  default = "North Central US"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource. For instance business stakeholders, or who pays for it?"
  type    = map(string)
  default = {
    "Environment" = "Development"
    "BU" = "Some BU"
  }
}

variable "db_server_name" {
  description = "The name of the MySQL server to be created."
  default = "mydevtest-mysql-db-01"
}
variable "db_name" {
  description = "The name of the database to be created."
  default = "wp_db1x17s2a"
}

variable "admin_username" {
  description = "The administrator username of MySQL Server."
  default = "mysqladmin"
}

variable "password" {
  description = "The administrator password of the MySQL Server."
  default = "#!SQLP@55"
}

variable "firewall_rule_name" {
  description = "Firewall rule name."
  default     = "public"
}
variable "start_ip_address" {
  description = "Defines the start IP address used in your database firewall rule."
  default     = "0.0.0.0"
}

variable "end_ip_address" {
  description = "Defines the end IP address used in your database firewall rule."
  default     = "255.255.255.255"
}

variable "db_version" {
  description = "Specifies the version of MySQL to use. Valid values are 5.6 and 5.7."
  default     = "5.7"
}

variable "ssl_enforcement" {
  description = "Specifies if SSL should be enforced on connections. Possible values are Enforced and Disabled."
  default     = "Enabled"
}

variable "sku_name" {
  description = "Specifies the SKU Name for this MySQL Server. The name of the SKU, follows the tier + family + cores pattern (e.g. B_Gen4_1, GP_Gen5_8)."
  default     = "B_Gen5_2"
}

variable "sku_capacity" {
  description = "The scale up/out capacity, representing server's compute units."
  default     = 2
}

variable "sku_tier" {
  description = "The tier of the particular SKU. Possible values are Basic, GeneralPurpose, and MemoryOptimized."
  default     = "Basic"
}

variable "sku_family" {
  description = "The family of hardware Gen4 or Gen5, before selecting your family check the product documentation for availability in your region."
  default     = "Gen5"
}

variable "storage_mb" {
  description = "Max storage allowed for a server. Possible values are between 5120 MB(5GB) and 1048576 MB(1TB) for the Basic SKU and between 5120 MB(5GB) and 4194304 MB(4TB) for General Purpose/Memory Optimized SKUs."
  default     = 5120
}

variable "backup_retention_days" {
  description = "Backup retention days for the server, supported values are between 7 and 35 days."
  default     = 7
}

variable "geo_redundant_backup" {
  description = "Enable Geo-redundant or not for server backup. Valid values for this property are Enabled or Disabled, not supported for the basic tier."
  default     = "Disabled"
}

variable "charset" {
  description = "Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset."
  default     = "utf8"
}

variable "collation" {
  description = "Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation."
  default     = "utf8_unicode_ci"
}
