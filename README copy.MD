# Comandos úteis 
## Build da imagem
* docker build -t rodolfo/app-nginx:1.0 .
* docker build -t rodolfo/app-nginx:1.2 .

## Vizualisar imagens
* docker images

### Rodar imagem docker
* docker run -d -p 80:80 -p 443:443 -p 8088:8088 -p 1935:1935 {image.id}
* docker run -d -p 80:80 -p 443:443 -p 8088:8088 -p 1935:1935 252a28f4abbb

### Vizualisar containers
* docker ps

### Terminal no container que estou usando
* docker exec -it {containerId} /bin/bash
* docker exec -it f8001aebc806 /bin/bash

### Inspecionar container
* docker inspect {containerId}