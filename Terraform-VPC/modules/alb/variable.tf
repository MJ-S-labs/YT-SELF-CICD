variable "sg_id" {
    description = "Security Group ID for the ALB"
    type        = string
}

variable "subnets" {
    description = "Subnets for the ALB"
    type        = list(string)
  
}

variable "vpc_id" {
    description = "VPC ID for the ALB"
    type        = string
  
} 

variable "instances" {
    description = "List of EC2 instance IDs to attach to the ALB"
    type        = list(string)
    
  
}