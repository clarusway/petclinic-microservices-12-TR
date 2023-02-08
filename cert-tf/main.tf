resource "helm_release" "cert_manager" {
  name  = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart = "cert-manager"
  create_namespace = true
  version    = "v1.11.0"
  namespace  = "cert-manager"

  set {
    name  = "startupapicheck.timeout"
    value = "10m"
  }
  set {
    name  = "installCRDs"
    value = true 
  }
}