resource "google_storage_bucket" "bucket" {
    name = "basic-bucket-gs511"
    location = var.region
    storage_class = "REGIONAL"

    labels = {
      name = "basic-bucket"
      location = var.region
    }

    versioning {
      enabled = true
    }
}