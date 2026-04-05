#!/bin/sh

# Get hostname and IP address
HOST_NAME=$(hostname)
IP_ADDR=$(hostname -i | awk '{print $1}')

# Replace placeholders in template
sed "s/HOSTNAME_PLACEHOLDER/$HOST_NAME/g; s/IP_PLACEHOLDER/$IP_ADDR/g" \
    /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html

# Start nginx
exec nginx -g 'daemon off;'
