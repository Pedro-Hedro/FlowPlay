variable "prefix" {}
variable "vpc_cidr_block" {}
variable "cluster_name" {}
variable "retention_days" {}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default = {
    Terraform   = "true"
    Name        = "flowplay"
    Environment = "prd"
  }
}