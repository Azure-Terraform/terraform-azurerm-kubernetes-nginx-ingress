output "ingress_class" {
  description = "Name of the ingress class to route through this controller"
  value       = var.ingress_class
}

output "nginx_url" {
  value = "http://${data.kubernetes_service.nginx.load_balancer_ingress.0.ip}"
}

output "load_balancer_ip" {
  value = data.kubernetes_service.nginx.load_balancer_ingress.0.ip
}
