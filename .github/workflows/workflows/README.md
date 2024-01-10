# GitHub Actions Workflows
  
## Description

GitHub Actions Workflowsare used to facilitate Continuous Integration/Continuous Deployment (CI/CD) of the terraform module in this repository. These automated workflows help to ensure the quality, security, and reliability of the Terraform code. Below is a summary of the GitHub workflows configured in this repository and what each one does.

## on-push.yml

### Secrets Scanning

To protect our sensitive data from being merged into the repo, we run a secrets scanning workflow on the Terraform code. This helps ensure that no sensitive data (like passwords, API keys, or other secrets) accidentally get committed into the main branch of the repository. Any secrets found will break the on-push.yml pipeline and prevent a PR from being able to be merged. 

### GitHub Actions Workflow Scanning

To ensure that the workflows themselves do not introudce any security issues, we scan the github actions workflows next to ensure they do not include commands or configurations that make the repository vulnerable to exploitation. See `https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions`

### Validation, Formatting, and Linting

We run a validation, formatting check, and linting check separately on the Terraform code on each commit. This ensures that the code is syntactically correct, adheres to our established coding style and best practices, and is free of any detectable errors or problematic constructs.

### Security Scanning

We care about security. We run automatic security scanning on the Terraform code on each code commit. This helps us identify and rectify potential security issues before they make their way into the production environment.

## on-pull-request.yml

### Terraform Plan

When a pull request is created, a Terraform plan is automatically run. This generates an execution plan that lets us preview the changes that will be made to our infrastructure without actually applying them. It's an important step for understanding the potential impact of our changes. The terraform plan is attached to the pull request and updated after each successfull run.

### Terratest Deployment

After the Terraform plan, we use Terratest to deploy the Terraform code in a real environment. This process applies and then destroys the Terraform code, allowing us to verify that the resources are correctly provisioned and that they can also be cleanly destroyed. It's an important part of our testing strategy to ensure that the Terraform code works as expected. Terratest may also include further unit test for validating the terraform module. 

## on-release.yml

### Automated Version Release

When code is merged into the main branch, we automatically release it as a new version. This practice helps us keep track of changes over time and makes it easier to roll back changes if necessary. This release process is a key part of our strategy to manage our codebase effectively.


