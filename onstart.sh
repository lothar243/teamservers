#!/bin/sh
service cron start
service ssh start
# touch /config/onstartran
tail -f /dev/null
