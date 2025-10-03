## creating database 

resource "google_sql_database_instance" "devopswithgsql"{
   name = var.name
   region = var.region
   database_version = var.database_version
   deletion_protection = false

   settings {
    tier = var.tier
    disk_size = var.disk_size
    availability_type = var.availability_type
    activation_policy = var.activation_policy
       backup_configuration {
        enabled = true 
        binary_log_enabled = true  ## required for MySQL HA
       }
   }

}

## creating user 
resource "google_sql_user" "admin" {
    count = 1
    name = var.user_name
    host = var.user_host
    password = var.user_password
    instance = google_sql_database_instance.devopswithgsql.name
}