variable "project_id" {
  type        = string
  description = "Project Identifier"
  default     =  "manifest-access-320809"
}

variable "project_name" {
  type        = string
  description = "Cluster Name"
  default     = "gcpcluster"
}

variable "project_zone" {
  type        = string
  description = "Google Computer zone to use for the cluster"
  default     = "us-central1-a"
}

variable "project_region" {
  type        = string
  description = "Project Region"
  default     = "us-central1"
}
