output "instance_name" {
    value = google_compute_instance.default.*.name ## * means multiple output
}
output "external_ips" {
  value = [for inst in google_compute_instance.default : try(inst.network_interface[0].access_config[0].nat_ip, null)]
}
### other way to get IP output of all instances 
#output "external_ips" {
#  value = google_compute_instance.default[*].network_interface[0].access_config[0].nat_ip
#}
### If you want IP for only one then
#output "external_ip" {
#  value = google_compute_instance.default[0].network_interface[0].access_config[0].nat_ip
#}