module "production" {
  source = "../../infra"

  environment = "prod"    
  project_id = "supple-hangout-448400-m2"
  cluster_name = "alura-cluster"
  region = "us-central1"
  zones = ["us-central1-a", "us-central1-b", "us-central1-f"]
  machine_type = "e2-medium"
  node_location = "us-central1-f"
  node_pools_name = "default-node-pool"
  ssh_user = "user-prod"
  ssh_pub_key_file = "iac-alura-key.pub"
  network = "default"
  subnetwork = "default"
  disk_size_gb = 10
}