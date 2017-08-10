FROM node:8.1.2

# Python 2.7 is already included in the base image, and we need python-dev and python-pip to
# to install the awscli. We use the awscli to upload web app bundles to S3
RUN apt-get update && \
  apt-get install -y --no-install-recommends git mysql-client python-dev python-pip && \
  pip install --upgrade awscli && \
  npm i -g yarn lerna gatsby
