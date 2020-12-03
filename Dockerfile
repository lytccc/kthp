FROM alpine
RUN apk add --no-cache ca-certificates curl
RUN curl -L -H "Cache-Control: no-cache" -o /tmp/v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip /tmp/v2ray.zip -d /usr/bin && \
    rm -rf /tmp/v2ray.zip
ADD config.json /config.json
CMD ["v2ray", "-config=/config.json"]
