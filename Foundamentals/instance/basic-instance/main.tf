provider "google" {
  project = var.project
  region = var.region
  credentials = "${file("${var.path}/sa-token.json")}"
}

resource "google_compute_instance" "default"{
    count = length(var.machine_count)    ## how many times this resource we're gonna make
    name = "devops-${count.index+1}"    ## list function creates name like devops-1, devops-2 ..
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
#    depends_on = [ google_compute_instance.other-instance-name ]
#    so this instance will start creating after other-instance-name is created   
}