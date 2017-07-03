FROM node:8.1.2

RUN apt-get update && \
  apt-get install -y --no-install-recommends git mysql-client && \
  npm i -g yarn && \
  yarn global add lerna
