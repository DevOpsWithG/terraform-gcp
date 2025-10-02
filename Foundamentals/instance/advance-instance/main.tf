resource "google_compute_instance" "default" {
    name = "advance-vm"
    zone = var.zone
    machine_type = "n1-standard-1"
    can_ip_forward = "false"
    description = "This is production ready vm in dev env"
       
       tags = ["allow-http"]  ## firewalls

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
        size = "15"
      }
    }

    labels = {
      name = "advance-vm"
      machine_type = "n1-standard-1"
    }

    metadata = {
      size = "15"
      foo = "bar"
    }
    metadata_startup_script =  "echo hi > test.txt"          ### path to run script ex ../script.sh
    network_interface {
      network = "default"
      access_config {

      }
    }
}

resource "google_compute_firewall" "allow_traffic" {
  name = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  target_tags = ["allow-http"] ## can be name, use this same in tag section of instance
}