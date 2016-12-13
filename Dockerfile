FROM node:latest
MAINTAINER Tristan Seligmann <mithrandi@mithrandi.net>
COPY pubkey.gpg /etc/apt/trusted.gpg.d/yarn-pubkey.gpg
COPY yarn.list /etc/apt/sources.list.d/yarn.list
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qy yarn
