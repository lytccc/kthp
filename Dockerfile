FROM alpine
RUN apk add --no-cache tor ca-certificates curl bash
ADD configure.sh /configure.sh
ADD config.json /usr/local/etc/v2ray/config.json
RUN chmod +x /configure.sh
CMD /configure.sh
