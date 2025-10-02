provider "google" {
  project = var.project
  region = var.region
  credentials = "${file("${var.path}/sa-token.json")}"
}

resource "google_compute_instance" "default"{
    count = length(var.count_number)    ## how many times this resource we're gonna make
    name = "devops-${count.index+1}"
    machine_type = "n1-standard-1"
    zone = var.zone

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
      }
    }
    network_interface {
      network = "default"

      access_config {
        
      }
    }

}