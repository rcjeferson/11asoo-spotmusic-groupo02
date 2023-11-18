resource "google_artifact_registry_repository" "spotmusic-frontend" {
  location      = var.GOOGLE_REGION
  repository_id = "spotmusic-frontend"
  description   = "Docker images"
  format        = "DOCKER"
}

resource "google_artifact_registry_repository" "spotmusic-backend" {
  location      = var.GOOGLE_REGION
  repository_id = "spotmusic-backend"
  description   = "Docker images"
  format        = "DOCKER"
}
