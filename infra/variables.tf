variable "project_id" {
  type        = string
  description = "The GCP project ID to apply this config to"
}

variable "name" {
  type        = string
  description = "Name given to the new GKE cluster"
  default     = "online-boutique"
}

variable "region" {
  type        = string
  description = "Region of the new GKE cluster"
  default     = "europe-west1"
}

variable "namespace" {
  type        = string
  description = "Kubernetes Namespace in which the Online Boutique resources are to be deployed"
  default     = "default"
}

variable "filepath_manifest" {
  type        = string
  description = "Path to Online Boutique's Kubernetes resources"
  default     = "../manifests/"
}

variable "memorystore" {
  type        = bool
  description = "If true, Online Boutique's in-cluster Redis cache will be replaced with a Google Cloud Memorystore Redis cache"
}
