variable "vpc_name" {
  description = "The name of the VPC"
  default     = "Test"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  default     = "us-east-1a"
}
