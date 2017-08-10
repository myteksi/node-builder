FROM node:8.1.2

RUN apt-get update && \
  apt-get install -y --no-install-recommends git mysql-client python-pip && \
  npm i -g yarn lerna gatsby && \
  pip install awscli
