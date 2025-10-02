variable "path" {
    default = "/home/sagarganesh511/credentials"
}
variable "project" {
    default = "neat-glazing-473202-f3"
}

variable "region" {
    default = "us-central-1"
}
variable "zone" {
    default = "us-central1-a"
}

### list-count-varibale
variable "count_number" {
    default = ["server1","server2","server3"] 
}