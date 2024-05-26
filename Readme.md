# Dockerization

Docker file samples

Features:
- FROM
- LABEL
- WORKDIR
- COPY
- RUN
- CMD
- USER
- WORKDIR

## Docker instructions
- To list local images
```
docker images
```

- To remove an image
```
docker image rm <image-name>:<image-ver>

# Remove all images
docker image prune -a
```

- To start a container
```
docker run <image-name>:<image-ver>

# Interactive
docker run -it <image-name>:<image-ver>

# Detached
docker run -d <image-name>:<image-ver>

# Naming the container
docker run --name <container-name> <image-name>:<image-ver>

# For postgres we need to specify the pwd
docker run -d -e POSTGRES_PASSWORD=12345678 postgres
```

- To list running images
```
docker ps

# filtering
docker ps -f "name=<container-name>"
```

- To review a container log
```
docker logs <container-id>

# live logs
docker logs -f <container-id>

# Ctrl+C to exit
```

- To stop a container
```
docker stop <container-id>
```

- To remove a stopped container
```
docker container rm <container-id>

# Removing all stopped containers
docker container prune
```

- To pull an image
```
docker pull <image-name>:<image-ver>

# From private registry
docker pull <private-registry-url>/<image-name>:<image-ver>
```

- To push an image
```
docker image push <image-name>:<image-ver>

# Pushing it to the own account into docker
docker tag <image-name>:<image-ver> <user-account>/<image-name>:<image-ver>
docker push <user-account>/<image-name>:<image-ver>
```

- To login in a private registry
```
docker login <private-registry-url>
```

- To save image to file 
```
docker save -o <file-name.tar> <image-name>:<image-ver>
``` 

- To load image from file
```
docker load -i <file-name>
```

- To build an image
```
docker build -t <image-name>:<image-ver> -f <docker-file> .

# without cache
docker build -t <image-name>:<image-ver> -f <docker-file> . --no-cache
```

- To see the instructions to create an image
```
docker history <image-name>:<image-ver>
```

- To override an ARG in docker build
```
docker build --build-arg <arg-name>=<arg-value>
```

- To override an ENV in docker run
```
docker run --env <env-name>:<value> <image-name>:<image-ver>
```

- To sync time between Windows and Docker
```
docker run --rm -it alpine date
```

- To enable port mapping
```
docker run -p 5501:80 <image-name>:<image-ver>

# docker run -d nginx
# docker run -d -p 5501:80 nginx
# docker ps
```
