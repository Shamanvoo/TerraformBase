data "aws_region" "region" {}

resource "aws_vpc" "this" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  enable_dns_support = var.dns_support
  enable_dns_hostnames = var.dns_hostnames
  enable_network_address_usage_metrics = var.network_address_usage_metrics

  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-${data.aws_region.region.name}"
    }, var.tags
    )
  }

resource "aws_subnet" "this" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = merge(
    var.tags,
    {
      Name = "${var.subnet_name}-${data.aws_region.region.name}"
    }, var.tags
    )
  }

