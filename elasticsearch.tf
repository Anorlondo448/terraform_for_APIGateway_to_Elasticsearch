###
#
# Elasticsearch Service
#
resource "aws_elasticsearch_domain" "es" {
  domain_name           = "${var.tag_name}-domain"
  elasticsearch_version = "6.3"
  cluster_config {
    instance_type = "t2.small.elasticsearch"
  }
  ebs_options {
        ebs_enabled = true
        volume_type = "gp2"
        volume_size = 10
    }
  access_policies = <<CONFIG
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Resource": "arn:aws:es:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:domain/${var.tag_name}-domain/*",
            "Condition": {
                "IpAddress": {"aws:SourceIp": ["${file("my_ip.txt")}"]}
            }
        }
    ]
}
CONFIG
  snapshot_options {
    automated_snapshot_start_hour = 23
  }
  tags {
    Name = "${var.tag_name}-vpc"
  }
}

