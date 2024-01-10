provider "random" {}

resource "random_string" "pet_name" {
  length  = var.random_length
  special = false
}

output "pet_name" {
  value = random_string.pet_name.result
}
