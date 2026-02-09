variable "project" {}

variable "region" {
    default = "us-central1"
    type = "string"
}

variable "zone" {
    default = "us-central1-c"
    type = "string"
}

variable "dev_users" {
    type        = list(string)
}