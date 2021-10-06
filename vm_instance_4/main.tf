resource "google_compute_instance" "web" {
  name         = var.name
  machine_type = var.machine_type

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

    network_interface {
    network = "default"
    access_config {

    }

  }
}
