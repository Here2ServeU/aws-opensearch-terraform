variable "region" {
  description = "The AWS region to deploy the resources"
  type     = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type     = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type =      string
}

variable "opensearch_domain_name" {
  description = "Name of the OpenSearch domain"
  type     = string
}

variable "opensearch_instance_type" {
  description = "Instance type for OpenSearch nodes"
  type    = string
}

variable "opensearch_instance_count" {
  description = "Number of OpenSearch nodes"
  type     = number
}

variable "opensearch_volume_size" {
  description = "Size of EBS volumes for OpenSearch nodes (in GB)"
  type    = number
}

variable "opensearch_version" {
  description = "OpenSearch engine version"
  type     = string
}