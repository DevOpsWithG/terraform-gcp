terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "7.18.0"
        }
    }
}

provider {
    project = var.project
    region = var.region
    zone = var.zone
}
