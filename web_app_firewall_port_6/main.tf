resource "google_compute_network" "webserver" {
  name                    = "${var.prefix}-vpc-${var.region}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "webserver" {
  name          = "${var.prefix}-subnet"
  region        = var.region
  network       = google_compute_network.webserver.self_link
  ip_cidr_range = var.subnet_prefix
}

resource "google_compute_firewall" "http-server" {
  name    = "default-allow-ssh-http"
  network = google_compute_network.webserver.self_link
   //firewall to block every port except 80, 443
  allow {
    protocol = "tcp"
    ports    = ["443", "80"]
  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}

resource "google_compute_instance" "webserver" {
  name         = "${var.prefix}-webserver"
  zone         = "${var.region}-b"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.webserver.self_link
    access_config {
    }
  }

    tags = ["http-server"]

  labels = {
    name = "webserver"
  }
}
