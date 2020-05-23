# Container image that runs your code
FROM node:12.16.3-alpine3.11

# Install Git in the container
RUN apk add --no-cache git

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
