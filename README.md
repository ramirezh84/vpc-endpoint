# terraform-aws-bki-vpc-endpoint

Terraform module for creating a VPC Endpoint on AWS.

Usage:

```
module "dynamodb_endpoint" {
  source = ".//modules/vpc_endpoint"

  vpc_id            = "${var.vpc_id}"
  service_name      = "com.amazonaws.us-east-1.dynamodb"
  vpc_endpoint_type = "Gateway"
  policy            = "{\"Statement\":[{\"Action\":\"*\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"*\"}],\"Version\":\"2008-10-17\"}"
  route_table_ids   = var.route_table_ids

  name_tag       = "vpce-dynamodb"
  appid_tag      = "${var.appid_tag}"
  awsaccount_tag = "${var.awsaccount_tag}"
  createdby_tag  = "${var.createdby_tag}"
  env_tag        = "${var.env_tag}"
  function_tag   = "${var.function_tag}"
}
```