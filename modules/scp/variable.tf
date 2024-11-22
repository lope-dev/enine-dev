variable "target_ids" {
    description = "list of sandbox OUs"
    type        = list(string)
}

variable "scp_name" {
    description = "path to json file for SCP"
    type        = string
}

variable "aws_org_name" {
    description = "path to json file for SCP"
    type        = string
}
