FROM alpine:3.5
RUN apk add --no-cache --virtual .build-deps ca-certificates curl
ADD configure.sh /configure.sh
ADD config.json /usr/local/etc/v2ray/config.json
RUN chmod +x /configure.sh
CMD /configure.sh

#ENTRYPOINT ["/usr/bin/v2ray/v2ray"]
# ENV PATH /usr/bin/v2ray:$PATH
CMD ["/usr/bin/v2ray", "-config=/usr/local/etc/v2ray/config.json"]
