// gcp provider and using personal credentials (not service account)
provider "google" {
  project = "MY_PROJECT_ID"
  region = "europe-west4"
  zone = "europe-west4-a"
  credentials = "${file("/home/joey/.config/gcloud/application_default_credentials.json")}"
}

resource "random_id" "instance_id" {
  byte_length = 0
}

// specify the instance type
resource "google_compute_instance" "default" {
  machine_type = "f1-micro"
  name = "my-new-vm"
  "boot_disk" {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // bootstrap script that runs on startup
  metadata_startup_script = "sudo run my startup script here; install java etc"

  // specify network config
  "network_interface" {
    network = "default"

    access_config {
      // Include this section to give this VM an external IP address
    }
  }
}