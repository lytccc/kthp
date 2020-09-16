FROM alpine:3.9
RUN apk add --no-cache --virtual .build-deps ca-certificates curl
ADD configure.sh /configure.sh
ADD config.json /usr/local/etc/v2ray/config.json
RUN chmod +x /configure.sh
EXPOSE 3000/tcp
ENTRYPOINT /configure.sh

#ENV PATH /usr/local/bin/v2ray:$PATH
#ENTRYPOINT v2ray -config /usr/local/etc/v2ray/config.json
