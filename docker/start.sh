#!/bin/sh

# Substitute environment variables in nginx config
envsubst '$KUBE_TOKEN' < /etc/nginx/nginx.conf > /tmp/nginx.conf
mv /tmp/nginx.conf /etc/nginx/nginx.conf

# Start nginx
exec nginx -g "daemon off;" 