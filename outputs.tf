output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "cluster_node_security_group_id" {
  value       = module.eks.cluster_primary_security_group_id
}

output "kubectl_config" {
  description = "kubectl config as generated by the module."
  value       = module.eks.kubeconfig
  sensitive   = true
}

output "cluster_node_groups" {
  description = "Outputs from node groups"
  value       = module.eks.node_groups
}

output "cluster_private_subnet_ids" {
  value = data.aws_subnet_ids.private
}
