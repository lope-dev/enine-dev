resource "aws_organizations_policy" "scp_policy" {
  name    = var.scp_name
  content = file("${path.root}/policies/${var.aws_org_name}/${var.scp_name}.json")
}

resource "aws_organizations_policy_attachment" "target_attachment" {
  for_each  = toset(var.target_ids)
  policy_id = aws_organizations_policy.scp_policy.id
  target_id = each.value
}
