provider "aws" {
  region = var.region
}

# resource "aws_iam_service_linked_role" "t2s-opensearch" {
#   aws_service_name = "opensearchservice.amazonaws.com"
# }


resource "aws_vpc" "t2s-VPC-dev" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "t2s-SUBNET-dev" {
  vpc_id     = aws_vpc.t2s-VPC-dev.id
  cidr_block = var.subnet_cidr
  availability_zone = "${var.region}a"
}

resource "aws_security_group" "t2s-sg-dev" {
  vpc_id = aws_vpc.t2s-VPC-dev.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_opensearch_domain" "t2s-OpenSearch" {
  domain_name    = var.opensearch_domain_name
  engine_version = var.opensearch_version

  cluster_config {
    instance_type  = var.opensearch_instance_type
    instance_count = var.opensearch_instance_count
  }

  ebs_options {
    ebs_enabled = true
    volume_size = var.opensearch_volume_size
    volume_type = "gp2"
  }

  access_policies = file("access_policies.json")

  vpc_options {
    subnet_ids          = [aws_subnet.t2s-SUBNET-dev.id]
    security_group_ids  = [aws_security_group.t2s-sg-dev.id]
  }

#   depends_on = [aws_iam_service_linked_role.t2s-opensearch]
}