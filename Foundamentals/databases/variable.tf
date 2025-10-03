variable "project"{
    default = "neat-glazing-473202-f3"
}
variable "region" {
    default = "us-central1"
}
variable "zone" {
    default = "us-central1-a"
}
variable "credentials"{
    default = "/home/sagarganesh511/credentials/sa-token.json"
}

variable "tier" { default = "db-f1-micro"}
variable "name" { default = "devopswithgdb"}
variable "disk_size" { default = "20"}
variable "database_version" { default = "MYSQL_5_7"}
variable "user_host" { default = "%"}   ## % means all hosts
variable "user_name" { default = "devopswithg"}
variable "user_password" { default = "devopswithgpass@123"}
variable "availability_type" { default = "REGIONAL"}
variable "activation_policy" { default = "always"}
