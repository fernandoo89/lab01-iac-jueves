# lab01 y lab02-iac-jueves
Este tarea tiene como objetivo implementar un entorno de laboratorio utilizando Terraform junto con el proveedor de Docker. La infraestructura se compone de varios contenedores (Nginx, Postgres y Redis), organizados en redes y volúmenes para simular un escenario real de aplicaciones con persistencia de datos y monitoreo.

Requisitos previos
Antes de ejecutar el proyecto, es necesario contar con lo siguiente:

Docker instalado y en ejecución.
Terraform versión 1.0 o superior.
Un sistema operativo compatible, como Ubuntu 24.04.2 LTS.

Estructura del proyecto
main.tf → contiene la definición de los recursos de Docker .
variables.tf → archivo donde se parametrizan las imágenes, credenciales y puertos.
.terraform.lock.hcl → asegura el bloqueo de versiones del proveedor.
.gitignore → lista de archivos que no se deben subir al repositorio.

Pasos para la ejecución
Clonar el repositorio

git clone <url-del-repo>
cd <carpeta-del-proyecto>

nicializar Terraform

terraform init

Previsualizar los cambios

terraform plan

Aplicar la infraestructura

terraform apply
Confirmar con yes cuando lo solicite.
Eliminación de la infraestructura
En caso se desee eliminar todo lo creado, basta con ejecutar:

terraform destroy
Y confirmar con yes.

Y confirmar con yes.
