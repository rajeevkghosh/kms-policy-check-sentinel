provider "google" {
  access_token = var.access_token
  project = "tokyo-nomad-323506"
  #credentials = file("key.json")
}

resource "google_kms_key_ring" "keyring11" {
  name     = "keyring-example"
  location = "us-central1"
}

resource "google_kms_crypto_key" "nav-key1" {
  name            = "cryopt-key-nav1"
  key_ring        = google_kms_key_ring.keyring11.id
  rotation_period = "7776000s"
  skip_initial_version_creation = true

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_kms_crypto_key" "nav-key2" {
  name            = "cryopt-key-nav2"
  key_ring        = google_kms_key_ring.keyring11.id


  lifecycle {
    prevent_destroy = true
  }
}


