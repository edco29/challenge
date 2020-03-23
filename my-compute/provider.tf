provider "google" {
  credentials = file(var.credentials)
  project     = var.project-name
  region      = var.region
}