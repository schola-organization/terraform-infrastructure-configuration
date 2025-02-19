resource "helm_release" "mongo" {
  name = var.release_name
  repository = var.chart_repository_url
  chart = var.chart_name
  version = var.chart_version
  namespace = var.kubernetes_namespace_name
  values = [ file(var.configuration) ]
}