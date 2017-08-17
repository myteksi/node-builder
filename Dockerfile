FROM node:8.4.0

RUN apt-get update && \
  apt-get install -y --no-install-recommends git mysql-client && \
  npm i -g yarn lerna
