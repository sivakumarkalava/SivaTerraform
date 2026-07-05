# Terraform Workspaces - Multi-Environment Infrastructure

## Overview

This project demonstrates how to use **Terraform Workspaces** to provision infrastructure for multiple environments (Development, Testing, and Production) using the **same Terraform code**.

Instead of maintaining separate Terraform code for each environment, workspaces allow us to reuse the same configuration while keeping each environment isolated.

## Environments

The following workspaces are created:

- **dev**
- **test**
- **prod**

Each workspace represents a separate environment and can be used to deploy infrastructure with different configurations.

## Why Use Terraform Workspaces?

Terraform workspaces help in:

- Reusing the same Terraform code for multiple environments.
- Avoiding duplicate Terraform files.
- Managing Development, Testing, and Production separately.
- Keeping infrastructure changes isolated between environments.

## State File Management

Each Terraform workspace maintains its **own state file**.

For example:

- `dev` workspace stores the Development infrastructure state.
- `test` workspace stores the Testing infrastructure state.
- `prod` workspace stores the Production infrastructure state.

Since every workspace has its own state, changes made in one environment do not affect the others.

## Variable Files

Different variable files are used to customize each environment.

Example:

- `dev.auto.tfvars`
- `test.auto.tfvars`
- `prod.auto.tfvars`

These files allow each environment to have different configurations, such as:

- Instance Name
- Instance Type
- Tags
- Region
- Other environment-specific values

while using the same Terraform code.

## Files Used

| File | Purpose |
|------|---------|
| `provider.tf` | Configures the Terraform provider (AWS). |
| `variable.tf` | Defines input variables. |
| `myresource.tf` | Creates AWS resources (EC2 Instance). |
| `dev.auto.tfvars` | Variables for Development environment. |
| `test.auto.tfvars` | Variables for Testing environment. |
| `prod.auto.tfvars` | Variables for Production environment. |

## Workspace Commands

Create workspaces:

```bash
terraform workspace new dev
terraform workspace new test
terraform workspace new prod
```

List workspaces:

```bash
terraform workspace list
```

Switch workspace:

```bash
terraform workspace select dev
```

Verify current workspace:

```bash
terraform workspace show
```

## Initialize Terraform

```bash
terraform init
```

## Preview Changes

```bash
terraform plan
```

## Create Infrastructure

```bash
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

## Benefits

- Single Terraform codebase
- Separate environments
- Independent state files
- Easy environment switching
- Better code reusability
- Simplified infrastructure management

## Project Outcome

Using Terraform Workspaces, we can provision Development, Testing, and Production environments from the same Terraform configuration while keeping each environment isolated through its own state file. This approach follows Infrastructure as Code (IaC) best practices by improving code reusability, maintainability, and scalability.


==================myversion below
these are the terraform files where we use same file to recreate the server with different configuraions in different environments. for that we need to create 3 workspaces dev test and prod
all these will help to reuse the code and create multiple servers. so that every workspace has it own statefile to update the data and records. 
