resource "google_compute_network" "network" {
  name = "my-pvc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name = "my-subnet"
  network = google_compute_network.network.id
  region = "us-central1"
  ip_cidr_range = "10.0.0.0/24"
}

resource "google_compute_firewall" "allow-http" {
  name = "allow-http"
  network = google_compute_network.network.id
  allow {
    protocol = "tcp"
    ports = ["80"]    
  }
  source_ranges = ["0.0.0.0/0"]
}