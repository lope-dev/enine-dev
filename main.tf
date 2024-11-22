
data "aws_availability_zones" "available" {}
data "aws_partition" "current" {}
data "aws_caller_identity" "current" {}
data "aws_organizations_organization" "org" {}

data "aws_organizations_organizational_units" "ou" {
  parent_id = data.aws_organizations_organization.org.roots[0].id
}


terraform {
  backend "s3" {}
}


locals {
  tags = merge(
    module.tagging.tags,
    {
      Environment = "${var.environment_tag}"
    }
  )
}
