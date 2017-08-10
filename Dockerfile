FROM node:8.1.2

# Python 2.7 is already included in the base image, and we need python-dev and python-pip to
# to install the awscli. We use the awscli to upload web app bundles to S3.
# We need backports.ssl_match_hostname, or we get a import error for some reason while running this
# on travis
RUN apt-get update && \
  apt-get install -y --no-install-recommends git mysql-client python-dev python-pip && \
  pip install --upgrade backports.ssl_match_hostname awscli && \
  npm i -g yarn lerna gatsby
