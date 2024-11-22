module "tagging" {
  source        = "git@github.addavalidemail.com:sample-modules/tagging.git?ref=v1.1.1"
  environment   = var.environment_tag
  region        = var.deployment_region
  application   = "UserPlatform" 
  business_unit = "AWSInfrastructure"
  team          = "AWSInfrastructure"
  security      = "Unassigned"
  component     = "Unassigned"
  product       = "Unassigned"
  function      = "Unassigned"
  phi           = false
}
