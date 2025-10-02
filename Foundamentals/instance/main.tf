provider "google" {
  project = "neat-glazing-473202-f3"
  region = "us-central1"
  credentials = "${file("${var.path}/sa-token.json")}"
}

resource "google_compute_instance" "default"{
    name = "test"
    machine_type = "n1-standard-1"
    zone = "us-central1-a"

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