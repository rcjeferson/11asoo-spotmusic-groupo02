terraform {
  cloud {
    organization = "11ASOO-SpotMusic-Grupo02"

    hostname = "app.terraform.io"

    workspaces {
      name = "prod"
    }
  }
}
