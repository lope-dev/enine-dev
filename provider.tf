provider "aws" {
  region = var.region
  alias  = ""
}

provider "aws" {
  region = var.deployment_region
  assume_role {
    role_arn = "arn:aws:iam::${var.management_id}:role/${var.role_name}"
  }
}
