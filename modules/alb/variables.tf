variable "name_prefix" {
  description = "Prefix to use for resource names"
  type        = string
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where resources will be created"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where the ALB will be placed"
  type        = list(string)
}

variable "nginx_port" {
  description = "Port number for Nginx container"
  type        = number
}