data "google_client_config" "default" {

}

resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  location = var.region

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
  
  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
  }
}

resource "google_container_node_pool" "nodes" {
  name       = var.node_pools_name
  location   = var.node_location
  cluster    = google_container_cluster.cluster.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.service_account.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}