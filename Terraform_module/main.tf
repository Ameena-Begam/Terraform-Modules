provider "aws" {
  region = "ap-south-1"
  access_key = "AKIATLQY4Y2UWZUKN45G"
  secret_key = "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"
}

module "vpc" {
  source   = "./vpc"
  vpc_cidr = var.vpc_cidr
}

module "s3" {
  source           = "./s3"
  s3_bucket_name   = var.s3_bucket_name
}

module "rds" {
  source              = "./rds"
  db_allocated_storage = var.db_allocated_storage
}
