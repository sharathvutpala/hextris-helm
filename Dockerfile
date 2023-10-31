FROM nginx:alpine

MAINTAINER sharath

COPY . /usr/share/nginx/html

RUN apk update && \
    apk add curl
