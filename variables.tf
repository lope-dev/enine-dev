#############################
## Backend Variables
#############################
variable "region" {
  description = "Name of the AWS region to run in."
  type        = string
}

variable "policy_assignments" {
  description = "list of Policy Assignment Objects. Each Policy Assignment Object consists of following <br> scp_name - the name of the scp_policy (also name of the file in the policies repo) <br> target_ids - list of ou_ids or account_ids to apply the policy to."
  type        = list(any)
}

variable "deployment_region" {
  description = "Name of the AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "bucket" {
  description = "The name of the S3 bucket where state will be stored"
  type        = string
}

variable "dynamodb_table" {
  description = "The name of the dynamoDB table used to lock the state"
  type        = string
}

variable "key" {
  description = "The key used for the state file"
  type        = string
}

variable "encrypt" {
  description = "Used to toggle encryption of state bucket"
  type        = bool
}

variable "management_id" {
  description = "account ID of destination account for provider role"
  type        = string
  default     = ""
}

variable "role_name" {
  description = "Name of the role to assume in the target account"
  type        = string
  default     = ""
}

variable "aws_org_name" {
  description = "name of the AWS Org that this IaC is deploying into. This is pulled in via EDP query strings"
  type        = string
}


#############################
# General Shared
#############################

variable "environment_tag" {
  description = "Tag for defining the environment."
  default     = "Development"
  type        = string
}
