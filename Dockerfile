FROM alpine:3.5
RUN apk add --no-cache --virtual .build-deps ca-certificates curl
ADD configure.sh /configure.sh
ADD config.json /usr/local/etc/v2ray/config.json
RUN chmod +x /configure.sh
CMD /configure.sh
