terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.28.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.5.1"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.7.0"
    }
  }

  required_version = "1.6.6"
}



