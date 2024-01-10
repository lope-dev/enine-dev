provider "random" {}

resource "random_string" "pet_name" {
  length  = var.pet_name_length
  special = false
}

output "pet_name" {
  value = random_string.pet_name.result
}

terraform {
  cloud {
    organization = "Ahead"

    workspaces {
      name = "pcpa_gh-actions-test_tf-destroy-workflow"
    }
  }
}