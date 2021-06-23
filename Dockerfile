# Container image that runs your code
FROM node:12.18.1
ENV NODE_ENV=production

RUN echo "hi"
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN npm install -g insomnia-inso
RUN echo "h2"

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]