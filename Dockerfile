# specify the node base image with your desired version node:<version>
FROM node:14

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /github/workspace/entrypoint.sh
# COPY swagger.json github/workspace/swagger.json

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]