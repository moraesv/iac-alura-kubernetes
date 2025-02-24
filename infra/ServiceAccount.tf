resource "google_service_account" "service_account" {
  account_id   = var.ssh_user
  display_name = var.ssh_user
}