resource "google_storage_bucket" "static" {
  project = var.project

  name          = "${var.name}-bucket"
  location      = var.static_content_bucket_location
  storage_class = "MULTI_REGIONAL"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  # For the example, we want to clean up all resources. In production, you should set this to false to prevent
  # accidental loss of data
  force_destroy = true

}
