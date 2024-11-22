# service-control-policies

A repo for all SCP policies

#### Table of Contents

1. [Usage](#usage)
2. [Requirements](#requirements)
3. [Providers](#Providers)
2. [Inputs](#inputs)
3. [Outputs](#outputs)
4. [Dependencies - Required external modules](#dependencies)

## Usage

### Adding new SCP Policy
- Create a new SCP Policy in JSON format and store the policy under path `policies/<aws_org_name>/<scp_policy_name>.json`
- Create new Policy assignment block for the tfvars file under `environments/<aws_org_name>.tfvars`
    - Add SCP Name same as filename used store JSON policy.
    - Add list of target ids i.e. ou_ids and account_ids to which policy needs to be applied.

## Deployment Instructions
1. Create a new Feature/Development branch and perform code changes as required. Prefix the branch name with `pre/` if require a pre-release.
2. Once confirmed, create PR to merge to code to `main` or `master` branch using standard Code Review practises.
3. Once code changes merged, Jenkins Pipeline will perform a DRY_RUN for the new tag/release on Sandbox environment (`sb01_mgmt`).
4. After changes are confirmed, click on `Build with Parameters` on the Jenkins platform and select desired environments, `DRY_RUN` flag to perform deployment.
