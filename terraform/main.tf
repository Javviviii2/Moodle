provider "google" {
  credentials = file("../.secrets/keyfileTerraformMoodle.json")
  project     = "steel-mantra-420418"
}

resource "google_container_cluster" "moodle_cluster" {
  name               = "moodle-pro"
  location           = "europe-west1"
  initial_node_count = 1

   deletion_protection = false  # Deshabilitar la protección de eliminación

  node_config {
    machine_type = "e2-medium"
  }
}

resource "google_container_node_pool" "moodle_nodes" {
  cluster    = google_container_cluster.moodle_cluster.name
  location   = google_container_cluster.moodle_cluster.location
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-micro"

    disk_size_gb = 10
    disk_type    = "pd-standard"  

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
    autoscaling {
    min_node_count = 1
    max_node_count = 2
  }
}

