resource "google_project_iam_binding" "oslogin" {
    project = "own-projects-dev"
    role = "roles/compute.oslogin"
    members = [for u in var.dev_users : "user:${u}"]
}

####### IAP=Identity-Aware Proxy lets SSH to VMs without a public IP, using Google as a secure tunnel.
resource "google_project_iam_binding" "iap_access" {
    project = var.project
    role = "roles/iap.tunnelResourceAccessor" 
    members = [for u in var.dev_users : "user:${u}"]
}
