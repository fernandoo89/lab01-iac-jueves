resource "docker_image" "api" {
  name         = "node:alpine"
  keep_locally = true
}

resource "docker_container" "api" {
  name  = "api-${terraform.workspace}"
  image = docker_image.api.image_id

  ports {
    internal = 3000
    external = var.api_port[terraform.workspace]
  }

  command = ["node", "-e", "require('http').createServer((req,res)=>{res.end('API ${terraform.workspace}')}).listen(3000)"]
}
