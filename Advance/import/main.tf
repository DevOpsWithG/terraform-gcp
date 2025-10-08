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


provider "google" {
    project = var.project
    region = var.region
    zone = var.zone
    credentials = file(var.credentials)
}


resource "google_compute_instance" "existing-vm" {

}

