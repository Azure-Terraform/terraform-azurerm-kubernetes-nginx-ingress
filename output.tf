output "ingress_class" {
  description = "Name of the ingress class to route through this controller"
  value       = var.ingress_class
}

output "nginx_url" {
  value = "http://${data.kubernetes_service.nginx.status.0.load_balancer.0.ingress.0.ip}"
}