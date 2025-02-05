- Create an EC2 Instance and Install Docker in it

- Create an nginx server and access it from host
	- `docker run -d -p 80:80 nginx`
	- Get logs of the container`docker logs <container_id>`
	- Follow logs of the container `docker logs -f <container_id>`
	- Get full info of the container `docker inspect <container_id>`
	- Get full info of the image `docker inspect <image_id>`
	- Get terminal access of running container `docker exec -it <container_id> bash`

- Write a Dockerfile for nginx by including
    - FROM
    - RUN
    - CMD
    - LABEL
    - EXPOSE
    - ENV
    - COPY
    - ADD