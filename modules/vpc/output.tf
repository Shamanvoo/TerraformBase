output "vpc_name" {
  description = "The name of the VPC"
  value       = "${aws_vpc.this.tags.Name}"
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.this.arn
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.this.cidr_block  
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = "${aws_subnet.this.tags.Name}"
}

output "subnet_cidr" {
  description = "The CIDR block of the subnet"
  value       = aws_subnet.this  
}

output "subnet_arn" {
  description = "The ARN of the subnet"
  value       = aws_subnet.this.arn  
}