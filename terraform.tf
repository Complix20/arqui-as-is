terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ULIMA"

    workspaces {
      name = "arqui-as-is"
    }
  }
}
