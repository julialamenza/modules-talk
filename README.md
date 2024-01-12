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
3. **Plan Execution**: Execute `terraform plan` to view the changes that will be made.
4. **Apply Changes**: Run `terraform apply` to apply the changes defined in your Terraform files.

### Example Module Usage
In this repository, the usage of Terraform modules is primarily defined in the ``module.tf`` file located in the root folder. 
This approach ensures a centralized and consistent definition of our infrastructure components, facilitating ease of management and clarity.

Standard Module Definition in module.tf
The module.tf file contains the necessary Terraform module definitions and configurations. 

Example snippet from module.tf:

```
module "example_module" {
  source = "../modules/example"
  ...
}

```

Alternative Ways to Define Modules
While our primary method involves the ``module.tf`` file , it's important to note that Terraform modules can be defined and utilized in several other ways. 

For example using ``tfvars`` Files: You can use ``.tfvars`` or ``.tfvars.json`` files to pass variables to your modules, allowing for more dynamic and environment-specific configurations. This approach is particularly useful when managing different environments (e.g., development, staging, production) with varying configurations.

Example variables.tf:

```
variable "instance_type" {
  description = "The type of EC2 instance to create."
  type        = string
}

variable "servers" {
  description = "The number of instances to create."
  type        = number
  default     = 1
}
```

You can create a ``terraform.tfvars`` file to set the value for these variables:

terraform.tfvars:

```
instance_type   = "t2.large"
instance_count  = 3

```

This file sets ``instance_type`` to ``t2.large`` and ``instance_count`` to ``3``.

Terraform Plan: If you want to use a specific tfvars file, you can specify it with the ``-var-file`` flag.

Command:

````
terraform plan -var-file="terraform.tfvars"
``````

This command will use the variables defined in ``terraform.tfvars`` to create the plan.

Terraform Apply: This step applies the changes required to reach the desired state of the configuration. Again, you can specify your tfvars file.

Command:

```
terraform apply -var-file="terraform.tfvars"
```

This command will apply the plan using the variable values provided in terraform.tfvars.

