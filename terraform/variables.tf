variable "region" {
  type        = string
  description = "aws region"
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  type        = string
  description = "vpc cidr block"
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  type = list(object({
    name       = string
    cidr_block = string
  }))
  description = "public subnets list"
}

variable "private_subnets" {
  type = list(object({
    name       = string
    cidr_block = string
  }))
  description = "private subnets list"
}


variable "cluster_name" {
  type = string
  description = "EKS cluster name"
  default = "eks-cluster"
}

variable "cluster_version" {
  type = string
  description = "EKS cluster version"
  default = "1.29"
}
