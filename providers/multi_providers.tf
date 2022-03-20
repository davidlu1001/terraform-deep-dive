locals {
  az = {
    a = "us-east-1a"
    b = "us-east-1b"
    c = "us-east-1c"
  }
}

resource "random_integer" "random_integer" {
  min = 1
  max = 999
}

resource "random_string" "random_string" {
  length           = 16
  special          = true
  override_special = "/@$"
}

resource "random_shuffle" "az" {
  input        = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  result_count = 3
}

output "random_integer" {
  value = random_integer.random_integer.result
}

output "random_string" {
  value     = random_string.random_string.result
  sensitive = true
}

output "random_shuffle" {
  value = random_shuffle.az.result
}
