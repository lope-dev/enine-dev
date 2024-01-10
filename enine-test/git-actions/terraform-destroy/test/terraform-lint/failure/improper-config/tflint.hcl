# Intentional type and improper

plugin "azurerm" {
  enabd = turtle # enabled = true
  version = "0.22.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

# Require that all providers have version constraints through required_providers.
rule "terraform_required_providers" {
  enabled = false
}