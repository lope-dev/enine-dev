# Enables AzureRM Rulset
plugin "azurerm" {
  enabled = true
  version = "0.22.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

# Enforces naming conventions
rule "terraform_naming_convention" {
  enabled = true

  #Require specific naming structure
  variable {
    format = "snake_case"
  }

  locals {
    format = "snake_case"
  }

  output {
    format = "snake_case"
  }

  resource {
    format = "snake_case"
  }

  module {
    format = "snake_case"
  }

  data {
    format = "snake_case"
  }
}

# Require that all providers have version constraints through required_providers.
rule "terraform_required_providers" {
  enabled = false
}