#!/bin/sh

echo "Cron clickhouse-backup container has been started"
/usr/sbin/crond -f -l 4
