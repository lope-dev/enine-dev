<!-- BEGIN_TF_DOCS -->
# terraform-azure-module-name

[![code validation](https://github.com/AHEAD-foundations-org/terraform-azure-access-analyzer/actions/workflows/ci.yml/badge.svg)](https://github.com/AHEAD-foundations-org/terraform-azure-access-analyzer/actions/workflows/ci.yml)&nbsp;&nbsp;[![terraform plan](https://github.com/AHEAD-foundations-org/terraform-azure-access-analyzer/actions/workflows/pr.yml/badge.svg)](https://github.com/AHEAD-foundations-org/terraform-azure-access-analyzer/actions/workflows/pr.yml)&nbsp;&nbsp;[![terraform docs](https://github.com/AHEAD-foundations-org/terraform-azure-access-analyzer/actions/workflows/documentation.yml/badge.svg)](https://github.com/AHEAD-foundations-org/terraform-azure-access-analyzer/actions/workflows/documentation.yml)

![alt text](./resources/images/diagram.png)

## Description

Describe the terraform module, the infrastructure it manages, and any important features or aspects of the module. The description should make it clear
what resources, services, and capabilities this module provides.

## Usage

The module can be deployed with the following:

```hcl


module "azure_module" {
  source = "./modules/terraform-azure-module-name"

  for_each   = var.enable_analyzer ? toset(var.regions) : toset([])
  region     = each.key
  brand      = var.brand
  tags       = var.tags
}
```

You can provide further information about the module here.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_string.pet_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pet_name"></a> [pet\_name](#output\_pet\_name) | n/a |
<!-- END_TF_DOCS -->