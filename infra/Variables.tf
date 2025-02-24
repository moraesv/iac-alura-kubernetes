variable "project_id" {
  description = "Project ID"
  type        = string
  default     = "demo"
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
  default     = "demo"
}

variable "ssh_user" {
  description = "SSH user"
  type        = string
  default     = "user-local"
}

variable "ssh_pub_key_file" {
  description = "SSH key file"
  type        = string
  default     = "iac-alura-key.pub"
}

variable "region" {
  description = "Region"
  type        = string
  default     = "us-central1"
}

variable "zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-central1-a", "us-central1-b", "us-central1-f"]
}

variable "node_location" {
  description = "Node locations"
  type        = string
  default     = "us-central1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "machine_type" {
  description = "Machine type"
  type        = string
  default     = "e2.micro"
}

variable "disk_size_gb" {
  description = "Disk size"
  type        = number
  default     = 50
}

variable "node_pools_name" {
  description = "Name of the node pool"
  type        = string
  default     = "my-node-pool"
}

variable "network" {
  description = "Network name"
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "Subnetwork name"
  type        = string
  default     = "us-central1"
}

variable "ip_range_pods" {
  description = "IP range for pods"
  type        = string
  default     = "us-central1-01-gke-01-pods"
}

variable "ip_range_services" {
  description = "IP range for services"
  type        = string
  default     = "us-central1-01-gke-01-services"
}


variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
