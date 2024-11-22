#loop through all auth policies under respective aws org folder ./authorization_policies/${aws_org_name}
#value is pulled from param store via EDP: /edp/shared/management/account/aws_org_name


module "scp" {
  source    = "./modules/scp"
  for_each  = { for scp in var.policy_assignments : scp.scp_name => scp }
  scp_name = each.value.scp_name
  aws_org_name = var.aws_org_name
  target_ids   = each.value.target_ids
}
