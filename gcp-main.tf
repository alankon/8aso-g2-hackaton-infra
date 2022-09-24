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