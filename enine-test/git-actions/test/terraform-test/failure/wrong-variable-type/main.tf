provider "random" {}

resource "random_string" "pet_name" {
  count = var.number_strings

  length  = var.random_length
  special = false
}

output "pet_name" {
  value = random_string.pet_name
}
