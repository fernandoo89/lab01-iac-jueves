resource "docker_image" "web" {
  name = "lab/web-${terraform.workspace}"

  build {
    context    = "${path.root}/.."
    dockerfile = "docker/${terraform.workspace == "localhost" ? "Web01" : "Web02"}/Dockerfile"
  }

  keep_locally = true
}

resource "docker_container" "web" {
  name  = "web-${terraform.workspace}"
  image = docker_image.web.image_id

  ports {
    internal = 80
    external = var.web_port[terraform.workspace]
  }
}
