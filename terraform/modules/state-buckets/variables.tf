
variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default = {
    Terraform   = "true"
    Name        = "flowplay"
    Environment = "prd"
  }
}

variable "name" {
  description = "The  Name of the client"
  type        = string
  default     = "flowplay"
}