# # Comandos úteis 
## Opções de rede
* docker network create --subnet=192.168.111.0/24 operacional

## Build da imagem
* docker build -t rodolfo/app-nginx:1.0 .
* docker build -t rodolfo/app-nginx:1.2 .

## Vizualisar imagens
* docker images

### Rodar imagem docker
* docker run -d -p 80:80 -p 443:443 -p 8090:8090 -p 1935:1935 {image.id}
* docker run -d -p 8090:8090 -p 1940:1940 252a28f4abbb
* docker run -d --network operacional --ip 192.168.111.193 -p 8090:8090 -p 1940:1940 252a28f4abbb


### Vizualisar containers
* docker ps

### Terminal no container que estou usando
* docker exec -it {containerId} /bin/bash
* docker exec -it 90439ff58098 /bin/bash

### Inspecionar container
* docker inspect {containerId}