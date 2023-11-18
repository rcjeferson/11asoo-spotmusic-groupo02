resource "google_sql_database_instance" "spotmusic" {
  name             = var.project_name
  database_version = "MYSQL_8_0"
  region           = var.GOOGLE_REGION

  settings {
    tier = "db-f1-micro"

    availability_type = "ZONAL"
    edition           = "ENTERPRISE"

    disk_size       = "10"
    disk_autoresize = true
    disk_type       = "PD_SSD"
  }
}

resource "google_sql_database" "spotmusic" {
  name     = var.project_name
  instance = google_sql_database_instance.spotmusic.name
}
