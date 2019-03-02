#!/bin/sh

if [ "$1" = "--help" -o "$1" = "-h" -o -z $1 ]; then
    echo "Usage: cert-gen.sh certbot-config.ini"
    exit 0
fi

file=$1

if [ -f "$file" ]; then
    certbot certonly --non-interactive --config ${file}
else
    echo "Certbot config file not found at ${file}"
    exit 1
fi
