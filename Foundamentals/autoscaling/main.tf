resource "google_compute_instance_template" "instance_template" {
    name = "devopswithg-${count.index+1}"
    description = "This is our autosacling instance_template"
    ## tags = []
    labels = {
        name = "devopswithg-${count.index+1}"
        environment = "dev"
    }
    instance_description = "This instance has been created using instance template devopswithg"
    machine_type = "n1-standard-1"
    can_ip_forward = "false"

    scheduling {
        automatic_restart = "true"
    }

    disk {
        source_image = "debian-cloud/debian-11"
        
    }
}   