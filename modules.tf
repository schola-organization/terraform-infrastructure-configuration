module "kubernetes" {
  source = "./modules/kubernetes"
  namespace_name = "namespace"
}

module "redis" {
  source = "./modules/helm/redis"
  release_name = "redis"
  chart_repository_url = "https://charts.bitnami.com/bitnami"
  chart_name = "redis"
  chart_version = "20.1.7"
  kubernetes_namespace_name = module.kubernetes.kubernetes_namespace_name
  configuration = "config/redis.yaml"
}

module "mongo" {
  source = "./modules/helm/mongo"
  release_name = "mongo"
  chart_repository_url = "https://charts.bitnami.com/bitnami"
  chart_name = "mongodb"
  chart_version = "16.4.3"  
  kubernetes_namespace_name = module.kubernetes.kubernetes_namespace_name
  configuration = "config/mongo.yaml"
}