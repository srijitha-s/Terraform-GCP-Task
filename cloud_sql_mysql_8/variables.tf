variable "name" {
  type    = string
  default = "mydatabase"
}

variable "database_version" {
  type    = string
  default = "MYSQL_5_7"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "tier" {
  type    = string
  default = "db-f1-micro"
}
