FROM alpine:3.9
RUN apk add --no-cache --virtual .build-deps ca-certificates curl
ADD configure.sh /configure.sh
ADD config.json /usr/local/etc/v2ray/config.json
RUN chmod +x /configure.sh
EXPOSE 3000/tcp
CMD /configure.sh
