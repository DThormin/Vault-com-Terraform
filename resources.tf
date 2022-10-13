 
resource "google_sql_database_instance" "db_instance" {
#  project = data.google_project.project.project_id
  name = var.db_name
  region           = var.region
  database_version = "POSTGRES_11"
#  password = var.db_password
 # deletion_protection = false

    settings {
        availability_type = "ZONAL"
        tier      = var.db_instance_type
        disk_size = "10"
        disk_type = "PD_SSD"

        ip_configuration {
          ipv4_enabled    = true
#          private_network = data.google_compute_network.network.id
     
#          authorized_networks {
#            name = "contractweb"
#            value = data.google_compute_address.contractweb_public_ip.address
#          }

#          authorized_networks {
#            name = "veronica"
#           value = "187.122.76.69/32"
#          }
        }

        backup_configuration {
#          transaction_log_retention_days = 3
          enabled            = true
          start_time         = "02:00"
  
 #       backup_retention_settings {
 #           retained_backups = 1
 #         }
        } 
        
        location_preference {
          zone = var.zone
        }     
    }

#  depends_on = [ google_service_networking_connection.private_vpc_connection,
#                 google_compute_global_address.private_ip_address
#               ]
}