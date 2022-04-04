provider "helm" {
  kubernetes {
    config_path = "${var.cluster}-config"
  }
}

resource "helm_release" "hextris" {
  name = "hextris"
  chart = "./hextris"
  depends_on = [
    kind_cluster.default
  ]
}

