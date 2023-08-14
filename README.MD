# # Comandos úteis 
## Opções de rede
* docker network create --subnet=192.168.111.0/24 operacional

## Build da imagem
* docker build -t rodolfo/app-nginx:1.0 .
* docker build -t rodolfo/app-nginx:1.2 .

## Vizualisar imagens
* docker images

## Remover imagens
* docker rmi {imagem id}

### Rodar imagem docker
* docker run -d -p 80:80 -p 443:443 -p 8090:8090 -p 1935:1935 {image.id}
* docker run -d -p 8090:8090 -p 1940:1940 252a28f4abbb
* docker run -d --network bridge --ip 192.168.0.58 -p 8090:8090 -p 1940:1940 5a9a88b54dd8


### Vizualisar containers
* docker ps

### Remover container
* docker rm {container.id}

### Terminal no container que estou usando
* docker exec -it {containerId} /bin/bash
* docker exec -it eb0ce581e08a /bin/bash

### Inspecionar container
* docker inspect {containerId}