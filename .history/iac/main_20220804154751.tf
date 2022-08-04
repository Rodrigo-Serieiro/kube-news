terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_5aa364c4f142042023f1dde16e22b108e6c64cc1af290eb65dd15d06aede4fc8"
}

resource "digitalocean_kubernetes_cluster" "k8s_iniciativa" {
  name   = "k8s-iniciativa"
  region = "nyc1"
  version = "1.23.9-do.0"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}
