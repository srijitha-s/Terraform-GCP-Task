variable "project" {
  description = "ID of your GCP project. Make sure you set this up before running this terraform code.  REQUIRED."
  default       = "manifest-access-320809"
}

variable "prefix" {
  description = "This prefix will be included in the name of some resources. You can use your own name or any other short string here."
  default     = "gcp-test"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "us-central1"
}

variable "zone" {
  description = "The zone where the resources are created."
  default     = "us-central1-b"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

