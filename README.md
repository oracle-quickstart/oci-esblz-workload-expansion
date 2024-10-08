# Landing Zones
 
Welcome to the [OCI Landing Zones (OLZ) Community](https://github.com/oci-landing-zones)! OCI Landing Zones simplify onboarding and running on OCI by providing design guidance, best practices, and pre-configured Terraform deployment templates for various architectures and use cases. These enable customers to easily provision a secure tenancy foundation in the cloud along with all required services, and reliably scale as workloads expand.
 
### This repository is archived in favor of the current release available from the OCI Landing Zones GitHub Organization. Please use [Oracle Enterprise Landing Zone Version 2](https://github.com/oci-landing-zones/oracle-enterprise-landingzone).
  
## oci-esblz-workload-expansion
This Terraform stack deploys the Workload Expansion to the [Baseline Landing Zone](https://github.com/oracle-quickstart/oci-enterprise-scale-baseline-landing-zone).

This Workload Expansion extends the Baseline Landing Zone deploying minimal resources needed to add a workload to the Baseline.

## Requirements
- [Terraform](https://www.terraform.io/) >= 1.0.0

## Prerequisites
The [Enterprise Scale Baseline Landing Zone](https://github.com/oracle-quickstart/oci-enterprise-scale-baseline-landing-zone) must be deployed prior to this stack. 

Detailed project prerequisites are included in the following [OCI CAF - Architecture Documentation](https://docs.oracle.com/en-us/iaas/Content/cloud-adoption-framework/technology-implementation.htm).



## Usage

An example [tfvars file](examples/terraform.tfvars.example) is included for reference. This file is arranged according to 
category a particular variable belongs to. Not all the variables in this file are required.

## Deploy Using Oracle Resource Manager
1. Click to deploy the stack
   
[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/oracle-quickstart/oci-enterprise-scale-baseline-landing-zone/releases/download/latest/oci-enterprise-scale-baseline-landing-zone.zip)

    If you aren't already signed in, when prompted, enter the tenancy and user credentials. Review and accept the terms and conditions.


2. Select the region where you want to deploy the stack.

3. Follow the on-screen prompts and instructions to create the stack.

4. After creating the stack, click Terraform Actions, and select Plan.

5. Wait for the job to be completed, and review the plan.

6. To make any changes, return to the Stack Details page, click Edit Stack, and make the required changes. Then, run the Plan action again.

7. If no further changes are necessary, return to the Stack Details page, click Terraform Actions, and select Apply.


## Deploy Using the Terraform CLI

### Prerequisites
Create a terraform.tfvars file and populate with the required variables or override existing variables.

Note: An example [tfvars file](examples/terraform.tfvars.example) is included for reference. Using this file is the 
preferred way to run the stack from the CLI, because of the large number of variables to manage.

To use this file just copy the example [tfvars file](examples/terraform.tfvars.example) and save it in the outermost directory.
Next, rename the file to **terraform.tfvars**. You can override the example values set in this file.

### Clone the Module

Clone the source code from suing the following command:
```
git clone ADD_URL_HERE
cd repository_name
```

### Running Terraform
After specifying the required variables you can run the stack using the following command:
```
terraform init
terraform plan
terraform apply
```

### Terraform Variables
A complete listing of the Terraform variables used in this stack are referenced [here](VARIABLES.md). This document is automatically generated 
using the [terraform-docs](https://github.com/terraform-docs/terraform-docs) with the following command:

```
terraform-docs markdown table --sort-by required --show inputs --show outputs . > VARIABLES.md
```

## The Team
This repository was developed by the Oracle OCI Product Solution Engineering Development team.

## How to Contribute
Interested in contributing?  See our contribution [guidelines](CONTRIBUTE.md) for details.

## License
This repository and its contents are licensed under [UPL 1.0](https://opensource.org/licenses/UPL).
