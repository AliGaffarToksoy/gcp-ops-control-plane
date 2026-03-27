resource "google_storage_bucket" "sample_bucket" {
  name     = "${var.project_id}-sample-bucket"
  location = var.region
}
