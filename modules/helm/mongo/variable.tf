// This variable consume the value from Kubernetes Module
variable "kubernetes_namespace_name" {
    type = string
}

variable "release_name" {
  type = string
}

variable "chart_repository_url" {
  type = string
}

variable "chart_name" {
  type = string
}

variable "chart_version" {
  type = string
}

variable "configuration" {
  type = string
}
