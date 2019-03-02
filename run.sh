#!/bin/sh

echo "${CRON_SCHEDULE} ${CRON_COMMAND} > /dev/stdout" > /var/spool/cron/crontabs/root

crond -f -d 8
