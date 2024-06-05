region                   = "us-east-1"
vpc_cidr                 = "40.0.0.0/16"
subnet_cidr              = "40.0.1.0/24"
opensearch_domain_name   = "t2s-dev"
opensearch_instance_type = "t3.small.search"
opensearch_instance_count = 2
opensearch_volume_size   = 10
opensearch_version       = "OpenSearch_1.0"