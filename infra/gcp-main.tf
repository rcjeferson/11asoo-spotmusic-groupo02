# Cria uma VM no Google Cloud
resource "google_artifact_registry_repository" "spotmusic" {
  location      = var.region
  repository_id = "spotmusic"
  description   = "Docker images"
  format        = "DOCKER"
}
