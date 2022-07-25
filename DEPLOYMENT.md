# Prerequisite

1. Deploy the Baseline stack found [here](https://github.com/oracle-quickstart/oci-enterprise-scale-baseline-landing-zone).

2. Create a terraform.tfvars file and populate with the required variables or override existing variables. Note: An example tfvars file is included for reference. Using this file is the preferred way to run the stack from the CLI, because of the large number of variables to manage. 

    - To use this file just copy the example tfvars file and save it in the outermost directory.
    - Next, rename the file to terraform.tfvars.
    - You can override the example values set in this file.

3. For the following input variables, find the values in the outputs of the Baseline stack. This will allow you to use the networking and IAM resouces from the base.
   1. network_compartment_id
   2. applications_compartment_id
   3. network_compartment_name
   4. nat_gateway_id
   5. vcn_id


# Known Issues
