provider "random" {}

terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = ">= 3.4"
    }
  }
}

resource "random_string" "pet_name" {
  length  = 8
  special = false
}

output "pet_name" {
  value = random_string.pet_name.result
}