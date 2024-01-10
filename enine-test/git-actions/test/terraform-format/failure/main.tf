provider "random"           {}

resource "random_string" "pet_name" {
  length  = 8
  special       = false
}

output "pet_name" {
  value               = random_string.pet_name.result
}