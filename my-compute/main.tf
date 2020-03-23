resource "google_compute_instance" "jenkinsci" {
  name = "jenkins-engine"
  machine_type = var.vm_type
  
  zone = var.zone

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-jenkins",
  ]

    boot_disk {
    initialize_params {
      image = var.os
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.jenkinsci_network_subnetwork.name

    access_config {
      // Ephemeral IP
    }
  }
}
