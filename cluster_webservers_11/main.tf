resource "google_container_cluster" "primary" {
  name = "${var.project_name}"
  initial_node_count = 2

    node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }

  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${var.project_name} --zone ${var.project_zone}"
  }
  
  provisioner "local-exec" {
    command = "kubectl create deployment tomcatinfra --image=saravak/tomcat8"
  }
  
  provisioner "local-exec" {
    command = "kubectl expose deployment tomcatinfra --port=8080 --target-port=8080 --type LoadBalancer"
  }
}
