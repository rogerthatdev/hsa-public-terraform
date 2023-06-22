terraform {
    backend "gcs" {
        bucket = "hsa-public-terraform-state"
        prefix = "terraform/state"
    }
}