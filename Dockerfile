# specify the node base image with your desired version node:<version>
FROM node:10
# replace this with your application's default port
EXPOSE 8888

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]