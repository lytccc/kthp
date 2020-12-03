#!/bin/sh
curl -L -H "Cache-Control: no-cache" -o /tmp/v.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip &&
  unzip /tmp/v.zip -d /usr/bin &&
  rm -rf /tmp/v.zip
v2ray -config /config.json
