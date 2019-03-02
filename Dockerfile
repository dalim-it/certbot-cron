FROM certbot/certbot:v0.31.0

# Tools that may be useful in a post-hook script
RUN apk add --no-cache openssh rsync

COPY run.sh /run.sh
COPY cert-gen.sh /usr/bin/cert-gen

ENV CRON_SCHEDULE="0 10 * * MON" \
    CRON_COMMAND="certbot renew"

VOLUME ["/etc/letsencrypt", "/var/log/letsencrypt", "/certificates"]

ENTRYPOINT ["/run.sh"]
