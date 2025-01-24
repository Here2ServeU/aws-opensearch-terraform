# Deploying Amazon OpenSearch Domain using Terraform

This repository provides Terraform configurations to deploy an Amazon OpenSearch Domain on AWS.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (version >= 0.12)
- AWS CLI configured with appropriate IAM permissions
- An AWS account

## Steps

### Clone the repository** 
   
   git clone https://github.com/Here2ServeU/aws-opensearch-terraform 
   
   cd aws-opensearch-terraform 

### Variables
Ensure that you change the variables defined in variables.tf:

- domain_name - (Required) The name of the Amazon OpenSearch Domain.
- elasticsearch_version - (Required) The version of Elasticsearch to use.
- instance_type - (Required) The instance type for the data nodes in the cluster.
- instance_count - (Required) The number of instances to deploy in the cluster.
- ebs_enabled - (Optional) Whether EBS volumes are attached to data nodes in the cluster.
- volume_size - (Optional) The size of EBS volumes attached to data nodes.

You can also create a "*"terraform.tfvars"*" file where you can specify the variables according to your requirements. 


### Initialize, Plan, and Apply
   terraform init

   terraform plan

   terraform apply

## Cleaning up
   terraform destroy

## Troubleshooting
   If you encounter any issues, please check the following:
   - Ensure your AWS CLI is configured correctly and you have the necessary permissions.
   - Could you verify that your Terraform configurations are correct and all required variables are set?
   - Check the AWS Management Console for any errors related to the resources being created.

## Contributing
  If you would like to contribute to this project, please open an issue or submit a pull request.



