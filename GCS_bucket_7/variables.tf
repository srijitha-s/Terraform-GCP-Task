variable "project" {
  description = "ID of your GCP project. Make sure you set this up before running this terraform code.  REQUIRED."
  default       = "manifest-access-320809"
}

variable "name" {
  description = "This prefix will be included in the name of some resources. You can use your own name or any other short string here."
  default     = "gcp-tf"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "us-central1"
}

variable "zone" {
  description = "The zone where the resources are created."
  default     = "us-central1-a"
}

variable "static_content_bucket_location" {
  description = "Location of the bucket that will store the static content. Once a bucket has been created, its location can't be changed. See https://cloud.google.com/storage/docs/bucket-locations"
  type        = string
  default     = "US"
}

