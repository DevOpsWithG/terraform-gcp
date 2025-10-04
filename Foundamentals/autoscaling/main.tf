## Instance template

resource "google_compute_instance_template" "instance_template" {
    count = 1
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
        auto_delete = "true"
        boot = "true"
    }

    disk {
        auto_delete = "false"
        disk_size_gb = "10"
        mode = "READ_WRITE"
        type = "PERSISTENT"
    }

    network_interface {
        network = "default"
    }

}

### Health Check
resource "google_compute_health_check" "health" {
    count = 1
    name = "devopswithg-helth"
    check_interval_sec = 5
    timeout_sec = 5
    healthy_threshold = 2
    unhealthy_threshold = 10

    http_health_check {
        request_path = "/alive.jsp"
        port = "8080"
    }
}

### group manager <--- manages the nodes

resource "google_compute_region_instance_group_manager" "instance_group_manager" {
    name = "instance-group-manager"
    instance_template = google_compute_instance_template.instance_template[0].self_link
    base_instance_name = "instance-group-manager"
    region = var.region

    version {
      instance_template = google_compute_instance_template.instance_template[0].self_link
    }

    auto_healing_policies {
        health_check = google_compute_health_check.health[0].self_link
        initial_delay_sec = "300"   ## sec
    }

}

# Auto Scaling Policy <--- How many instances 
resource "google_compute_region_autoscaler" "autoscaler" {
    count = 1
    name = "autoscaler" 
    project = var.project
    region = var.region
    target = google_compute_region_instance_group_manager.instance_group_manager.self_link

    autoscaling_policy {
        max_replicas = 2
        min_replicas = 1
        cooldown_period = 60   # sec 
        cpu_utilization {
            target = 0.8
        }
    }
}