# Outputs EKS info
output "cluster_endpoint" {
  description = "The endpoint for the Amazon EKS cluster."
  value = try(aws_eks_cluster.eks.endpoint, null)
}

output "cluster_name" {  
  description = "The name of the Amazon EKS cluster."
  value       = try(aws_eks_cluster.eks.name, "")
}

output "cluster_certificate_authority_data" {  
  description = "The Base64-encoded certificate data required to communicate with the Amazon EKS cluster."
  value       = try(aws_eks_cluster.eks.certificate_authority[0].data, null)
}

output "cluster_id" {  
  description = "The unique ID of the Amazon EKS cluster."
  value       = try(aws_eks_cluster.eks.id, "")
}

