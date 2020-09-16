FROM golang:alpine AS builder
RUN apk add --no-cache --virtual .build-deps tor ca-certificates curl
ADD configure.sh /configure.sh
ADD config.json /usr/local/etc/v2ray/config.json
RUN chmod +x /configure.sh
CMD /configure.sh
