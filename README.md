centralized-service-control-policies
A repo for all SCP policies in Cloud V2

Table of Contents
Usage
Requirements
Providers
Inputs
Outputs
Dependencies - Required external modules
Usage
Adding new SCP Policy
Create a new SCP Policy in JSON format and store the policy under path policies/<aws_org_name>/<scp_policy_name>.json
Create new Policy assignment block for the tfvars file under environments/<aws_org_name>.tfvars
Add SCP Name same as filename used store JSON policy.
Add list of target ids i.e. ou_ids and account_ids to which policy needs to be applied.
Deployment Instructions
Create a new Feature/Development branch and perform code changes as required. Prefix the branch name with pre/ if require a pre-release.
Once confirmed, create PR to merge to code to main or master branch using standard Code Review practises.
Once code changes merged, Jenkins Pipeline will perform a DRY_RUN for the new tag/release on Sandbox environment (sb01_mgmt).
After changes are confirmed, click on Build with Parameters on the Jenkins platform and select desired environments, DRY_RUN flag to perform deployment.
