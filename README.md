# Lab02 - IaC (Infraestructura como Código)

Este proyecto despliega dos aplicaciones web (`Web01` y `Web02`) utilizando contenedores **Docker**. 

El proyecto cuenta con dos enfoques para su despliegue:
1. Usando **Docker Compose** directamente.
2. Usando **Terraform** con el proveedor local de Docker (`iac/`).

---

##  Requisitos previos

Asegúrate de tener instalado en tu sistema local:
- [Docker y Docker Compose](https://www.docker.com/products/docker-desktop/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads) (Solo si deseas ejecutar el despliegue con Infraestructura como Código).

---

##  Ejecutar con Docker Compose
.

### Pasos:

1. Ubícate en la raíz del proyecto.
2. Construye y levanta los servicios ejecutando:
   ```bash
   docker compose up -d --build
   ```
3. Verifica que los contenedores estén corriendo:
   ```bash
   docker ps
   ```
4. Accede en el navegador a:
   - **Web01**: [http://localhost:4000](http://localhost:4000)
   - **Web02**: [http://localhost:4001](http://localhost:4001)

### Para detener el proyecto:
```bash
docker compose down
```

---

## Ejecutar con Terraform (IaC)

Este proyecto también incluye código en Terraform para provisionar la infraestructura (los contenedores en Docker) como un ejemplo de IaC.

### Pasos:

1. Ingresa a la carpeta de IaC:
   ```bash
   cd iac
   ```
2. Inicializa Terraform y descarga los proveedores requeridos:
   ```bash
   terraform init
   ```
3. Verifica el plan de ejecución:
   ```bash
   terraform plan
   ```
4. Aplica los cambios para levantar la infraestructura:
   ```bash
   terraform apply --auto-approve
   ```
5. Esto desplegará los contenedores basándose en los archivos `.tf` definidos.

### Para destruir la infraestructura:
```bash
terraform destroy --auto-approve
```

---

## 📁 Estructura del proyecto
- `docker-compose.yml`: Archivo de orquestación de Docker Compose para desplegar las webs en puertos fijos (4000 y 4001).
- `docker/`: Configuración y Dockerfiles para ambas webs.
- `iac/`: Todo el código desarrollado bajo Terraform para aplicar los conceptos de Infraestructura como Código (IaC).
- `Web01/` y `Web02/`: Código fuente/HTML original o archivos del sitio web que se muestran en los contenedores.