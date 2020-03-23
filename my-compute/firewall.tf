resource "google_compute_firewall" "ssh" {
  name    = "${var.network}-firewall-ssh"
  network = google_compute_network.jenkinsci_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["${var.network}-firewall-ssh"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "http" {
  name    = "${var.network}-firewall-http"
  network = google_compute_network.jenkinsci_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["${var.network}-firewall-http"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "https" {
  name    = "${var.network}-firewall-https"
  network = google_compute_network.jenkinsci_network.name

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags   = ["${var.network}-firewall-https"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "jenkins" {
  name    = "${var.network}-firewall-jenkins"
  network = google_compute_network.jenkinsci_network.name

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }
  target_tags   = ["${var.network}-firewall-jenkins"]
  source_ranges = ["0.0.0.0/0"]
}


