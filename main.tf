locals {
  apis = [
    "artifactregistry.googleapis.com",
    "cloudbuild.googleapis.com"
  ]
}

resource "google_project_service" "default" {
  for_each = toset(local.apis)
  service  = each.value
}

resource "google_artifact_registry_repository" "default" {
  location      = var.default_region
  repository_id = "jump-start-solutions"
  description   = "Repository of Jumpstart solution builds."
  format        = "DOCKER"
}