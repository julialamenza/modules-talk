# Using and Reusing Terraform Modules

## Introduction
This talk focuses on the effective use and reuse of Terraform modules to manage and provision infrastructure as code. Terraform modules are reusable, shareable, and composable components that encapsulate a set of infrastructure resources.

## What are Terraform Modules?
Terraform modules are containers for multiple resources that are used together. A module can include resources such as virtual machines, VPC settings, and networking interfaces. 
The primary goal of modules is to encapsulate a piece of infrastructure and reduce code duplication.

### Key Benefits:
- **Reusability**: Modules can be used multiple times within the same project or across different projects.
- **Maintainability**: Easier to maintain and update infrastructure by updating the module.
- **Encapsulation**: Groups related resources together, improving project structure and readability.

## Official References
- [Terraform Modules Documentation](https://www.terraform.io/docs/modules/index.html)
- [Module Registry](https://registry.terraform.io/browse/modules)
- [Creating Modules Guide](https://www.terraform.io/docs/modules/create.html)

## How to Run Terraform Code with Modules

### Prerequisites
- Terraform installed on your machine
- Basic understanding of Terraform syntax and structure

### Steps to Run Terraform Code
1. **Initialize Terraform**: Run `terraform init` to initialize the working directory containing Terraform configuration files.
2. **Create Configuration File**: Write your Terraform configuration file (`main.tf`) which includes the module.
3. **Plan Execution**: Execute `terraform plan` to view the changes that will be made.
4. **Apply Changes**: Run `terraform apply` to apply the changes defined in your Terraform files.

### Example Module Usage
