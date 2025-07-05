variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = list(string)
}

variable "subnets_names"{
  description = "Names for the subnets"
  type        = list(string)
  default     = ["Public1", "Public2"]
}