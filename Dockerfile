# specify the node base image with your desired version node:<version>
FROM node:14

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
#should we copy in inso files so it doesnt have to install every time?


# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]