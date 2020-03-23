resource "google_compute_network" "jenkinsci_network" {
  name =  var.network
}

resource "google_compute_subnetwork" "jenkinsci_network_subnetwork" {
  name          = "${var.network}-subnetwork-${var.subnetwork-region}"
  region        = var.subnetwork-region
  network       = google_compute_network.jenkinsci_network.self_link
  ip_cidr_range = "10.0.0.0/16"
}