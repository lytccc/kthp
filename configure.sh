#!/bin/sh

# Download and install V2Ray
mkdir /tmp/v2ray
curl -L -H "Cache-Control: no-cache" -o /tmp/v2ray/v2ray.zip https://github.com/v2ray/v2ray-core/releases/latest/download/v2ray-linux-64.zip
unzip /tmp/v2ray/v2ray.zip -d /tmp/v2ray
install -m 755 /tmp/v2ray/v2ray /usr/local/bin/v2ray
install -m 755 /tmp/v2ray/v2ctl /usr/local/bin/v2ctl
install -m 666 /tmp/v2ray/geoip.dat /usr/local/bin/geoip.dat
install -m 666 /tmp/v2ray/geosite.dat /usr/local/bin/geosite.dat

# Remove temporary directory
rm -rf /tmp/v2ray

# V2Ray new configuration
#install -d /usr/local/etc/v2ray

# Run V2Ray
nohup /usr/local/bin/v2ray -config /usr/local/etc/v2ray/config.json > /dev/null
