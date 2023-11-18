variable "GOOGLE_PROJECT_ID" {
  description = "GCP Project name"
  type        = string
}

variable "GOOGLE_REGION" {
  description = "Google Cloud region"
  type        = string
  default     = "us-central1"
}

variable "GOOGLE_ZONE" {
  description = "Google Cloud zone"
  type        = string
  default     = "us-central1-a"
}

variable "GOOGLE_CREDENTIALS" {
  description = "Google Cloud Credentials"
  type        = string
}

variable "project_name" {
  type    = string
  default = "spotmusic"
}
