terraform {
  required_version = ">= 0.15"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "cloud_native" {
  filename = "cloud_native.txt"

  content = <<-EOT
    Cloud native technologies empower organizations to build and run 
    scalable applications in modern, dynamic environments 
    such as public, private, and hybrid clouds.
    Containers, service meshes, microservices, immutable infrastructure, and declarative APIs 
    exemplify this approach.

    What I said above is wrong.
    EOT
}
