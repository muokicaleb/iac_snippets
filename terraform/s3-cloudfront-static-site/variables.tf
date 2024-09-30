variable "bucket_name" {
  description = "Name of static website bucket"
  type        = string
  default     = ""
}

variable "domain_name" {
  type        = string
  description = "Domain name"
  default     = ""
}

variable "region" {
  default = "us-east-1"
  
}
