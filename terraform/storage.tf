resource "google_storage_bucket" "example-gh-actions-terraform" {
  name          = "example-gh-actions-terraform"
  location      = "asia-northeast1"

  force_destroy = true
  uniform_bucket_level_access = true
  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "Delete"
    }
  }
}


