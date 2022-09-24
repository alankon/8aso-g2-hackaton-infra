resource "google_artifact_registry_repository" "backend-repo" {
  location = "us-central1"
  repository_id = "grupo-02-backend-registry"
  description = "Hackathon Backend Docker Images"
  format = "DOCKER"
}

resource "google_artifact_registry_repository" "frontend-repo" {
  location = "us-central1"
  repository_id = "grupo-02-frontent-registry"
  description = "Hackathon Frontend Docker Images"
  format = "DOCKER"
}

resource "google_sql_database" "database" {
  name     = "spotmusic-playlist"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = "spotmusic-database"
  region           = "us-central1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}

resource "google_sql_user" "users" {
  name     = "var.db_user"
  instance = google_sql_database_instance.instance.name
  password = "var.db_pass"
}
