# -------------------
# General variables
# -------------------
variable "region" {
  type        = string
  description = "The region where the infrastructure will be deployed"
}

variable "environment" {
  type        = string
  description = "The environment for which the infrastructure is intended (e.g., dev, test, prod)"
}

# ---------------
# EKS variables
# ---------------
variable "cluster_name" {
  description = "The name of the Amazon EKS cluster."
  type        = string
}

variable "cluster_version" {
  description = "The desired Kubernetes version for the EKS cluster."
  type        = string
}

variable "cluster_endpoint_private_access" {
  description = "Set to true to enable private access to the Kubernetes API server endpoint."
  type        = bool
}

variable "cluster_endpoint_public_access" {
  description = "Set to true to enable public access to the Kubernetes API server endpoint."
  type        = bool
}

variable "node_instance_types" {
  description = "A list of EC2 instance types for the EKS cluster nodes."
  type        = list(string)
}

variable "node_ami_type" {
  description = "The type of Amazon Machine Image (AMI) to use for EKS cluster nodes."
  type        = string
}

variable "node_disk_size" {
  description = "The size of the disk in GiB for each EKS node."
  type        = number
}

variable "node_desired_size" {
  description = "The desired number of EKS nodes in the node group."
  type        = number
}

variable "node_max_size" {
  description = "The maximum number of EKS nodes that can join the node group."
  type        = number
}

variable "node_min_size" {
  description = "The minimum number of EKS nodes that can join the node group."
  type        = number
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the EKS cluster will be deployed. These subnets should be in different availability zones for high availability."
  type = list(string)
}

