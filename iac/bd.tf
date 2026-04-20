resource "docker_image" "bd" {
  name         = "postgres:15-alpine"
  keep_locally = true
}

resource "docker_container" "bd" {
  name  = "bd-${terraform.workspace}"
  image = docker_image.bd.image_id

  ports {
    internal = 5432
    external = var.db_port[terraform.workspace]
  }

  env = [
    "POSTGRES_PASSWORD=${var.db_password}",
    "POSTGRES_DB=lab_${terraform.workspace}"
  ]
}
