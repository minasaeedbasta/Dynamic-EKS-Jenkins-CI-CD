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
  default = [ 
  {
    "name" : "public1",
    "cidr_block" : "10.0.1.0/24"
  },
  {
    "name" : "public2",
    "cidr_block" : "10.0.2.0/24"
  }
  ]
}

variable "private_subnets" {
  type = list(object({
    name       = string
    cidr_block = string
  }))
  description = "private subnets list"
  default = [
  {
    "name" : "private1",
    "cidr_block" : "10.0.3.0/24"
  },
  {
    "name" : "private2",
    "cidr_block" : "10.0.4.0/24"
  }
  ]
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
