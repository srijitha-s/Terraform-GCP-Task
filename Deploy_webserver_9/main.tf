provider "google" {
  version = "~> 3.67.0"
  project= var.project
  zone    = var.zone
  region  = var.region
  credentials = file("credentials.json")
}
resource "google_compute_instance" "web" {
  name         = var.name
  machine_type = var.machine_type

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  metadata_startup_script = file("./apache2.sh")

  scheduling {
    preemptible       = true
    automatic_restart = false
  }

  network_interface {
    network = "default"
    access_config {

    }

  }
}
