variable "sg_id" {
    description = "Security Group ID for the EC2 instance"
    type        = string
}

variable "subnets" {
    description = "List of subnet IDs where the EC2 instance will be launched"
    type        = list(string)
  
}

variable "ec2_names" {
    description = "List of names for the EC2 instances"
    type        = list(string)
    default     = ["webserver1", "webserver2"]

}