# Common CIDR range for VPC, S3, and RDS
variable "common_cidr" {
  description = "Common CIDR range for VPC, RDS, and S3"
  type        = string
  default     = "10.0.0.0/16"  # You can change this to your desired CIDR range
}

# VPC Module Variables
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  # Use the common CIDR range as the default
}

# S3 Module Variables
variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-testterra-bucket"
}

# RDS Module Variables
variable "db_allocated_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
  default     = 20
}


