# docker run -d --name nginx -p 8080:80 -v ./:/usr/share/nginx/html nginx
# docker run -d --name nginx -p 8080:80 --mount type=bind,source="$(pwd)",target=/usr/share/nginx/html nginx
# docker run -d --name nginx -p 8080:80 --mount type=bind,source="$(pwd)",target=/usr/share/nginx/html devwellington/nginx-com-vim:latest
docker rm nginx -f

docker run -d --name nginx -p 8080:80 devwellington/nginx-com-vim:latest

docker run --rm devwellington/ubuntu-hello

# Criando redes
docker network create --driver bridge minharede

docker run -d -it --name ubuntu1 --network minharede bash
docker run -d -it --name ubuntu2 --network minharede bash
docker run -d -it --name ubuntu3 bash

docker attach ubuntu1
    ping ubuntu2 # ok
    ping ubuntu3 # fail

docker network connect minharede ubuntu3

docker attach ubuntu2
    ping ubuntu3 # ok