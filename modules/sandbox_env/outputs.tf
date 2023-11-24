output "sandbox_project_id" {
  value = google_project.sandbox_project.project_id
}

output "sandbox_bucket_url" {
  value = google_storage_bucket.sandbox_bucket.url
}

output "postgres_instance_name" {
  value = google_sql_database_instance.postgres_instance.name
}
