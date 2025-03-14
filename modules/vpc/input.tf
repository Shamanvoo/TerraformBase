variable "vpc_name" {
  description   = "value of the name for the VPC"
  type          = string
  default       = "terraform vpc"
  
}

variable "dns_support" {
  description   = "value of the DNS support for the VPC"
  type          = bool
  default       = true
  
}

variable "dns_hostnames" {
  description   = "value of the DNS hostnames for the VPC"
  type          = bool
  default       = true
  
}

variable "network_address_usage_metrics" {
  description   = "value of the network address usage metrics for the VPC"
  type          = bool
  default       = false
  
}

variable "vpc_cidr" {
  description   = "value of the CIDR block for the VPC"
  type          = string
  default       = null
}

variable "instance_tenancy" {
  description   = "value of the instance tenancy for the VPC"
  type          = string
  default       = "default"
}

variable "tags" {
  description   = "value of the tags for the VPC"
  default       = {}
}

variable "vpc_id" {
  description   = "value of the id for the VPC"
  type          = string
  default       = null  
}

variable "subnet_cidr" {
  description   = "value of the CIDR block for the subnet"
  type          = string
  default       = null  
}

variable "subnet_name" {
  description   = "value of the name for the subnet"
  type          = string  
}

variable "subnet_az" {
  description   = "value of the availability zone for the subnet"
  type          = string  
}