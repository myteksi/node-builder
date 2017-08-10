FROM node:8.1.2

RUN apt-get update && \
  apt-get install -y git mysql-client python3 python3-pip && \
  pip3 install --upgrade awscli && \
  npm i -g yarn lerna gatsby
