resource "google_project" "sandbox_project" {
  name       = "sandbox-${var.project_name_suffix}"
  project_id = "sandbox-${var.project_name_suffix}"
  org_id     = var.org_id
  billing_account = var.billing_account
}

resource "google_storage_bucket" "sandbox_bucket" {
  name          = "sandbox-bucket-${var.project_name_suffix}"
  project       = google_project.sandbox_project.project_id
  location      = var.region
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_project_service" "vertex_ai_api" {
  project = google_project.sandbox_project.project_id
  service = "aiplatform.googleapis.com"
}

resource "google_sql_database_instance" "postgres_instance" {
  name             = "sandbox-postgres-${var.project_name_suffix}"
  project          = google_project.sandbox_project.project_id
  region           = var.region
  database_version = "POSTGRES_12"

  settings {
    tier = "db-f1-micro"
  }
}
