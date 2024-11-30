terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ULIMA"

    workspaces {
      name = "Arquitectura_AS-IS"
    }
  }
}
