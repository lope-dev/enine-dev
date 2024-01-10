provider "random" {}

resource "random_string" "pet_name" {
  length  = var.random_length
  special = false
}

resource "random_integer" "number" {
  min = 1
  max = 5000
}

output "pet_name" {
  value = random_string.pet_name.result
}
