#!/bin/sh

# Copy new certificates in the certificates volume
cp -RL /etc/letsencrypt/live/* /certificates/

echo "RELOAD PROXY SERVERS"
