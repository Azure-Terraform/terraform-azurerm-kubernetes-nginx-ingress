resource "helm_release" "nginx_ingress" {
  name       = var.helm_release_name
  repository = var.helm_repository
  chart      = "ingress-nginx"
  version    = var.helm_chart_version
  namespace  = var.kubernetes_namespace

  create_namespace = var.kubernetes_create_namespace

  values = [
    templatefile("${path.module}/config/nginx_ingress_config.yaml.tmpl", {
      ingress_class      = var.ingress_class
      replica_count      = var.replica_count
      ip_address         = var.load_balancer_ip
      enable_default_tls = var.enable_default_tls
      default_tls_secret = var.tls_default_secret
    }),
    var.additional_yaml_config
  ]
}
