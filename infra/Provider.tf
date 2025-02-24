terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.14.0"
    }
  }
}

provider "google" {
  project = "supple-hangout-448400-m2"
  region  = "us-central1"
  zone    = "us-central1-c"
}


provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}